.class Lcom/tudou/ui/activity/HomePageActivity$8;
.super Ljava/lang/Object;
.source "HomePageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/HomePageActivity;->dialog(Lcom/youku/vo/Initial;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/HomePageActivity;

.field final synthetic val$dialog:Lcom/youku/widget/TudouDialog;

.field final synthetic val$initial:Lcom/youku/vo/Initial;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/HomePageActivity;Lcom/youku/widget/TudouDialog;Lcom/youku/vo/Initial;)V
    .locals 0

    .prologue
    .line 1031
    iput-object p1, p0, Lcom/tudou/ui/activity/HomePageActivity$8;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    iput-object p2, p0, Lcom/tudou/ui/activity/HomePageActivity$8;->val$dialog:Lcom/youku/widget/TudouDialog;

    iput-object p3, p0, Lcom/tudou/ui/activity/HomePageActivity$8;->val$initial:Lcom/youku/vo/Initial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity$8;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 1035
    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity$8;->val$initial:Lcom/youku/vo/Initial;

    iget-object v0, v0, Lcom/youku/vo/Initial;->update:Lcom/youku/vo/Initial$Update;

    iget-object v0, v0, Lcom/youku/vo/Initial$Update;->version:Ljava/lang/String;

    iget-object v1, p0, Lcom/tudou/ui/activity/HomePageActivity$8;->val$initial:Lcom/youku/vo/Initial;

    iget-object v1, v1, Lcom/youku/vo/Initial;->update:Lcom/youku/vo/Initial$Update;

    iget-object v1, v1, Lcom/youku/vo/Initial$Update;->download:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tudou/ui/fragment/MoreFragment;->startUpdateDownload(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity$8;->val$initial:Lcom/youku/vo/Initial;

    iget-object v0, v0, Lcom/youku/vo/Initial;->pop_page:Lcom/youku/vo/PopPage;

    if-eqz v0, :cond_1

    .line 1041
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity$8;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    iget-object v1, p0, Lcom/tudou/ui/activity/HomePageActivity$8;->val$initial:Lcom/youku/vo/Initial;

    invoke-static {v0, v1}, Lcom/tudou/ui/activity/HomePageActivity;->access$300(Lcom/tudou/ui/activity/HomePageActivity;Lcom/youku/vo/Initial;)V

    .line 1043
    :cond_1
    return-void
.end method
