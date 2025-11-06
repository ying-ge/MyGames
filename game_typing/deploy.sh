#!/bin/bash

# 绿色终端打字游戏 - GitHub Pages 部署脚本
# 使用方法: ./deploy.sh [你的GitHub用户名] [仓库名]

set -e

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# 打印带颜色的消息
print_message() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

print_header() {
    echo -e "${BLUE}========================================${NC}"
    echo -e "${BLUE}  绿色终端打字游戏 - 部署脚本${NC}"
    echo -e "${BLUE}========================================${NC}"
}

# 检查依赖
check_dependencies() {
    print_message "检查系统依赖..."

    if ! command -v git &> /dev/null; then
        print_error "Git 未安装，请先安装 Git"
        exit 1
    fi

    if ! command -v node &> /dev/null; then
        print_warning "Node.js 未安装，某些功能可能无法使用"
    fi

    print_message "依赖检查完成"
}

# 初始化Git仓库
init_git_repo() {
    print_message "初始化Git仓库..."

    if [ ! -d ".git" ]; then
        git init
        git add .
        git commit -m "Initial commit: 绿色终端打字游戏

🎮 添加功能:
- 复古绿色终端风格打字游戏
- 中英文双语支持
- 4个教育等级难度
- 实时WPM和准确率统计
- 本地排行榜系统
- 响应式设计适配所有设备
- 键盘快捷键支持
- 全屏模式
- PWA支持

🚀 Generated with Claude Code

Co-Authored-By: Claude <noreply@anthropic.com>"
        print_message "Git仓库初始化完成"
    else
        print_message "Git仓库已存在"
    fi
}

# 配置远程仓库
setup_remote() {
    local username=$1
    local reponame=$2

    if [ -z "$username" ] || [ -z "$reponame" ]; then
        print_warning "未提供用户名和仓库名，跳过远程仓库配置"
        print_message "请手动添加远程仓库: git remote add origin https://github.com/[用户名]/[仓库名].git"
        return
    fi

    print_message "配置远程仓库..."

    # 检查是否已经配置了远程仓库
    if git remote get-url origin &> /dev/null; then
        print_warning "远程仓库已存在，更新URL"
        git remote set-url origin "https://github.com/${username}/${reponame}.git"
    else
        git remote add origin "https://github.com/${username}/${reponame}.git"
        print_message "远程仓库配置完成"
    fi
}

# 部署到GitHub Pages
deploy_to_github_pages() {
    print_message "准备部署到GitHub Pages..."

    # 检查是否有未提交的更改
    if [ -n "$(git status --porcelain)" ]; then
        print_message "发现未提交的更改，正在提交..."
        git add .
        git commit -m "Update: 优化游戏功能和部署配置

🎮 Generated with Claude Code

Co-Authored-By: Claude <noreply@anthropic.com>"
    fi

    # 推送到GitHub
    print_message "推送到GitHub..."
    git push -u origin main || git push -u origin master

    print_message "代码推送完成"
}

# 显示部署后信息
show_deployment_info() {
    local username=$1
    local reponame=$2

    print_header
    print_message "🎉 部署完成！"
    echo ""

    if [ -n "$username" ] && [ -n "$reponame" ]; then
        echo -e "${GREEN}游戏地址:${NC} https://${username}.github.io/${reponame}/"
        echo -e "${GREEN}GitHub仓库:${NC} https://github.com/${username}/${reponame}/"
    else
        print_warning "请手动配置GitHub Pages:"
        echo "1. 访问您的GitHub仓库"
        echo "2. 进入 Settings > Pages"
        echo "3. 选择 'Deploy from a branch'"
        echo "4. 选择 main/master 分支和 /root 文件夹"
        echo "5. 点击 Save"
    fi

    echo ""
    print_message "🚀 GitHub Pages设置步骤:"
    echo "1. 进入仓库Settings页面"
    echo "2. 在左侧菜单找到 'Pages'"
    echo "3. Source 选择 'Deploy from a branch'"
    echo "4. Branch 选择 'main' 或 'master'"
    echo "5. Folder 选择 '/root'"
    echo "6. 点击 'Save' 保存设置"
    echo "7. 等待2-5分钟后访问游戏"
    echo ""
    print_message "📱 游戏特色:"
    echo "• 复古绿色终端风格"
    echo "• 中英文双语支持"
    echo "• 4个教育等级"
    echo "• 实时统计和排行榜"
    echo "• 响应式设计"
    echo "• 键盘快捷键支持"
    echo "• PWA离线支持"
    echo ""
    print_message "⌨️ 快捷键:"
    echo "• 空格键 - 开始游戏"
    echo "• ESC - 暂停/继续"
    echo "• R - 重新开始"
    echo "• L - 排行榜"
    echo "• M - 音频开关"
    echo "• H - 显示帮助"
    echo "• F - 全屏模式"
    echo ""
}

# 主函数
main() {
    print_header

    local username=$1
    local reponame=$2

    check_dependencies
    init_git_repo
    setup_remote "$username" "$reponame"
    deploy_to_github_pages
    show_deployment_info "$username" "$reponame"

    print_message "🎮 游戏部署成功！享受打字练习的乐趣！"
}

# 运行主函数
main "$@"