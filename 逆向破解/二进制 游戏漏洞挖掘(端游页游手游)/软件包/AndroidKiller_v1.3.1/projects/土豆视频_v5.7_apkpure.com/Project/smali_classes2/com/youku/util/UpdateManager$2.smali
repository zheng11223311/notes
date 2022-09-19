.class Lcom/youku/util/UpdateManager$2;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/util/UpdateManager;->showNoticeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/util/UpdateManager;

.field final synthetic val$dialog:Lcom/youku/widget/TudouDialog;


# direct methods
.method constructor <init>(Lcom/youku/util/UpdateManager;Lcom/youku/widget/TudouDialog;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/youku/util/UpdateManager$2;->this$0:Lcom/youku/util/UpdateManager;

    iput-object p2, p0, Lcom/youku/util/UpdateManager$2;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 109
    iget-object v0, p0, Lcom/youku/util/UpdateManager$2;->this$0:Lcom/youku/util/UpdateManager;

    invoke-static {v0}, Lcom/youku/util/UpdateManager;->access$200(Lcom/youku/util/UpdateManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tudou/ui/fragment/MoreFragment;->isCurrentVertionDownloaded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->installApk()V

    .line 111
    iget-object v0, p0, Lcom/youku/util/UpdateManager$2;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 112
    iget-object v0, p0, Lcom/youku/util/UpdateManager$2;->this$0:Lcom/youku/util/UpdateManager;

    invoke-static {v0}, Lcom/youku/util/UpdateManager;->access$400(Lcom/youku/util/UpdateManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 147
    :goto_0
    return-void

    .line 115
    :cond_0
    sget-boolean v0, Lcom/tudou/ui/fragment/MoreFragment;->isDownloading:Z

    if-eqz v0, :cond_2

    .line 116
    sget-boolean v0, Lcom/tudou/ui/fragment/MoreFragment;->mIsShowNotification:Z

    if-eqz v0, :cond_1

    .line 120
    const v0, 0x7f0d008a

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 124
    :goto_1
    iget-object v0, p0, Lcom/youku/util/UpdateManager$2;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 125
    iget-object v0, p0, Lcom/youku/util/UpdateManager$2;->this$0:Lcom/youku/util/UpdateManager;

    invoke-static {v0}, Lcom/youku/util/UpdateManager;->access$400(Lcom/youku/util/UpdateManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 122
    :cond_1
    sput-boolean v2, Lcom/tudou/ui/fragment/MoreFragment;->mIsShowNotification:Z

    goto :goto_1

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/youku/util/UpdateManager$2;->this$0:Lcom/youku/util/UpdateManager;

    invoke-static {v0}, Lcom/youku/util/UpdateManager;->access$500(Lcom/youku/util/UpdateManager;)Lcom/youku/util/UpdateManager$UpdateType;

    move-result-object v0

    sget-object v1, Lcom/youku/util/UpdateManager$UpdateType;->check:Lcom/youku/util/UpdateManager$UpdateType;

    if-ne v0, v1, :cond_3

    .line 129
    iget-object v0, p0, Lcom/youku/util/UpdateManager$2;->this$0:Lcom/youku/util/UpdateManager;

    invoke-static {v0, v2}, Lcom/youku/util/UpdateManager;->access$600(Lcom/youku/util/UpdateManager;Z)V

    goto :goto_0

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/youku/util/UpdateManager$2;->this$0:Lcom/youku/util/UpdateManager;

    invoke-static {v0}, Lcom/youku/util/UpdateManager;->access$500(Lcom/youku/util/UpdateManager;)Lcom/youku/util/UpdateManager$UpdateType;

    move-result-object v0

    sget-object v1, Lcom/youku/util/UpdateManager$UpdateType;->force:Lcom/youku/util/UpdateManager$UpdateType;

    if-ne v0, v1, :cond_4

    .line 131
    iget-object v0, p0, Lcom/youku/util/UpdateManager$2;->this$0:Lcom/youku/util/UpdateManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/util/UpdateManager;->access$600(Lcom/youku/util/UpdateManager;Z)V

    goto :goto_0

    .line 133
    :cond_4
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 134
    invoke-static {}, Lcom/youku/util/Util;->hasSDCard()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 135
    iget-object v0, p0, Lcom/youku/util/UpdateManager$2;->this$0:Lcom/youku/util/UpdateManager;

    invoke-static {v0, v2}, Lcom/youku/util/UpdateManager;->access$600(Lcom/youku/util/UpdateManager;Z)V

    goto :goto_0

    .line 137
    :cond_5
    const v0, 0x7f0d01ed

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 138
    iget-object v0, p0, Lcom/youku/util/UpdateManager$2;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 139
    iget-object v0, p0, Lcom/youku/util/UpdateManager$2;->this$0:Lcom/youku/util/UpdateManager;

    invoke-static {v0}, Lcom/youku/util/UpdateManager;->access$400(Lcom/youku/util/UpdateManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 142
    :cond_6
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 143
    iget-object v0, p0, Lcom/youku/util/UpdateManager$2;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 144
    iget-object v0, p0, Lcom/youku/util/UpdateManager$2;->this$0:Lcom/youku/util/UpdateManager;

    invoke-static {v0}, Lcom/youku/util/UpdateManager;->access$400(Lcom/youku/util/UpdateManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
