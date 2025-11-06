#!/bin/bash
# WebP图片批量压缩脚本
# 使用cwebp工具进一步压缩webp图片

cd "$(dirname "$0")/gallery_compress" || exit 1

# 压缩质量 (0-100, 推荐75-85，平衡质量和文件大小)
QUALITY=80

# 压缩方法 (0-6, 6最慢但压缩率最高)
METHOD=6

# 创建备份目录
BACKUP_DIR="../gallery_compress_backup_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$BACKUP_DIR"

echo "开始压缩WebP图片..."
echo "压缩质量: $QUALITY"
echo "压缩方法: $METHOD"
echo "备份目录: $BACKUP_DIR"
echo ""

# 统计变量
total_files=0
total_original_size=0
total_compressed_size=0

# 遍历所有webp文件
for file in *.webp; do
    if [ -f "$file" ]; then
        total_files=$((total_files + 1))
        
        # 备份原文件
        cp "$file" "$BACKUP_DIR/"
        
        # 获取原文件大小
        original_size=$(stat -f%z "$file" 2>/dev/null || stat -c%s "$file" 2>/dev/null)
        total_original_size=$((total_original_size + original_size))
        
        # 创建临时文件
        temp_file="${file}.tmp"
        
        # 压缩图片
        cwebp -q $QUALITY -m $METHOD "$file" -o "$temp_file" 2>/dev/null
        
        if [ $? -eq 0 ] && [ -f "$temp_file" ]; then
            # 获取压缩后文件大小
            compressed_size=$(stat -f%z "$temp_file" 2>/dev/null || stat -c%s "$temp_file" 2>/dev/null)
            total_compressed_size=$((total_compressed_size + compressed_size))
            
            # 如果压缩后更小，则替换原文件
            if [ "$compressed_size" -lt "$original_size" ]; then
                mv "$temp_file" "$file"
                saved=$((original_size - compressed_size))
                saved_percent=$((saved * 100 / original_size))
                # macOS兼容的文件大小格式化
                orig_kb=$((original_size / 1024))
                comp_kb=$((compressed_size / 1024))
                echo "✓ $file: ${orig_kb}KB → ${comp_kb}KB (节省 ${saved_percent}%)"
            else
                # 如果压缩后更大，保留原文件
                rm -f "$temp_file"
                echo "  $file: 已是最优大小，跳过"
            fi
        else
            echo "✗ $file: 压缩失败，保留原文件"
            rm -f "$temp_file"
        fi
    fi
done

echo ""
echo "压缩完成！"
echo "处理文件数: $total_files"

# macOS兼容的文件大小格式化
orig_mb=$((total_original_size / 1024 / 1024))
comp_mb=$((total_compressed_size / 1024 / 1024))
orig_kb=$((total_original_size / 1024))
comp_kb=$((total_compressed_size / 1024))

if [ "$orig_mb" -gt 0 ]; then
    echo "原始总大小: ${orig_mb}MB (${orig_kb}KB)"
    echo "压缩后大小: ${comp_mb}MB (${comp_kb}KB)"
else
    echo "原始总大小: ${orig_kb}KB"
    echo "压缩后大小: ${comp_kb}KB"
fi

if [ "$total_original_size" -gt 0 ]; then
    total_saved=$((total_original_size - total_compressed_size))
    total_saved_percent=$((total_saved * 100 / total_original_size))
    saved_mb=$((total_saved / 1024 / 1024))
    saved_kb=$((total_saved / 1024))
    if [ "$saved_mb" -gt 0 ]; then
        echo "节省空间: ${saved_mb}MB (${saved_kb}KB, ${total_saved_percent}%)"
    else
        echo "节省空间: ${saved_kb}KB (${total_saved_percent}%)"
    fi
fi

echo ""
echo "备份文件保存在: $BACKUP_DIR"
echo "如需恢复，请从备份目录复制文件回 gallery_compress/"

