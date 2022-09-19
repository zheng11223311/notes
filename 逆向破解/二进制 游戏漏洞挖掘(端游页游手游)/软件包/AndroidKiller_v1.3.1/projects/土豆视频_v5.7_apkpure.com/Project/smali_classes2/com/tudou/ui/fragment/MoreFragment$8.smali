.class Lcom/tudou/ui/fragment/MoreFragment$8;
.super Ljava/lang/Object;
.source "MoreFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MoreFragment;->checkVersionTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MoreFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MoreFragment;)V
    .locals 0

    .prologue
    .line 997
    iput-object p1, p0, Lcom/tudou/ui/fragment/MoreFragment$8;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 1067
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check vertion failReason========"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    invoke-static {}, Lcom/youku/widget/YoukuLoadingDialog;->dismiss()V

    .line 1070
    const v0, 0x7f0d03d1

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 1071
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 7
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 1001
    const-string v5, "TAG_TUDOU"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkVertionResult========="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p1, :cond_1

    const-string v4, "null"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    new-instance v4, Lcom/youku/vo/VersionInfo;

    invoke-direct {v4}, Lcom/youku/vo/VersionInfo;-><init>()V

    invoke-virtual {p1, v4}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/VersionInfo;

    .line 1006
    .local v3, "versionInfo":Lcom/youku/vo/VersionInfo;
    iget-object v4, v3, Lcom/youku/vo/VersionInfo;->should_upgrade:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/tudou/ui/fragment/MoreFragment$8;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-virtual {v4}, Lcom/tudou/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1007
    iget-object v4, v3, Lcom/youku/vo/VersionInfo;->upgrade_to_version:Ljava/lang/String;

    invoke-static {v4}, Lcom/tudou/ui/fragment/MoreFragment;->access$2202(Ljava/lang/String;)Ljava/lang/String;

    .line 1008
    iget-object v1, v3, Lcom/youku/vo/VersionInfo;->message:Ljava/lang/String;

    .line 1009
    .local v1, "message":Ljava/lang/String;
    iget-object v4, v3, Lcom/youku/vo/VersionInfo;->new_version_file_url:Ljava/lang/String;

    invoke-static {v4}, Lcom/tudou/ui/fragment/MoreFragment;->access$2302(Ljava/lang/String;)Ljava/lang/String;

    .line 1010
    new-instance v2, Lcom/youku/widget/TudouDialog;

    iget-object v4, p0, Lcom/tudou/ui/fragment/MoreFragment$8;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-virtual {v4}, Lcom/tudou/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget-object v5, Lcom/youku/widget/TudouDialog$TYPE;->picker:Lcom/youku/widget/TudouDialog$TYPE;

    invoke-direct {v2, v4, v5}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;Lcom/youku/widget/TudouDialog$TYPE;)V

    .line 1012
    .local v2, "updateDialog":Lcom/youku/widget/TudouDialog;
    const-string v4, "\u53d1\u73b0\u65b0\u7248\u672c"

    invoke-virtual {v2, v4}, Lcom/youku/widget/TudouDialog;->setTitle(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v2, v1}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 1014
    const-string v4, "\u73b0\u5728\u5347\u7ea7"

    new-instance v5, Lcom/tudou/ui/fragment/MoreFragment$8$1;

    invoke-direct {v5, p0, v2}, Lcom/tudou/ui/fragment/MoreFragment$8$1;-><init>(Lcom/tudou/ui/fragment/MoreFragment$8;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v2, v4, v5}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1033
    const-string v4, "\u7a0d\u540e\u5347\u7ea7"

    new-instance v5, Lcom/tudou/ui/fragment/MoreFragment$8$2;

    invoke-direct {v5, p0, v2}, Lcom/tudou/ui/fragment/MoreFragment$8$2;-><init>(Lcom/tudou/ui/fragment/MoreFragment$8;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v2, v4, v5}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1044
    invoke-virtual {v2}, Lcom/youku/widget/TudouDialog;->show()V

    .line 1062
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "updateDialog":Lcom/youku/widget/TudouDialog;
    :cond_0
    :goto_1
    invoke-static {}, Lcom/youku/widget/YoukuLoadingDialog;->dismiss()V

    .line 1063
    return-void

    .line 1001
    .end local v3    # "versionInfo":Lcom/youku/vo/VersionInfo;
    :cond_1
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1045
    .restart local v3    # "versionInfo":Lcom/youku/vo/VersionInfo;
    :cond_2
    iget-object v4, p0, Lcom/tudou/ui/fragment/MoreFragment$8;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-virtual {v4}, Lcom/tudou/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1046
    new-instance v0, Lcom/youku/widget/TudouDialog;

    iget-object v4, p0, Lcom/tudou/ui/fragment/MoreFragment$8;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-virtual {v4}, Lcom/tudou/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget-object v5, Lcom/youku/widget/TudouDialog$TYPE;->normal:Lcom/youku/widget/TudouDialog$TYPE;

    invoke-direct {v0, v4, v5}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;Lcom/youku/widget/TudouDialog$TYPE;)V

    .line 1048
    .local v0, "dialog":Lcom/youku/widget/TudouDialog;
    const-string v4, "\u5df2\u7ecf\u662f\u6700\u65b0\u7248\u672c\u4e86"

    invoke-virtual {v0, v4}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 1049
    iget-object v4, p0, Lcom/tudou/ui/fragment/MoreFragment$8;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    const v5, 0x7f0d00c9

    invoke-virtual {v4, v5}, Lcom/tudou/ui/fragment/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tudou/ui/fragment/MoreFragment$8$3;

    invoke-direct {v5, p0, v0}, Lcom/tudou/ui/fragment/MoreFragment$8$3;-><init>(Lcom/tudou/ui/fragment/MoreFragment$8;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v4, v5}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1060
    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->show()V

    goto :goto_1
.end method
