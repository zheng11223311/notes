.class Lcom/tudou/ui/activity/HomePageActivity$5;
.super Ljava/lang/Object;
.source "HomePageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/HomePageActivity;->showForceUpdateDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/HomePageActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/HomePageActivity;)V
    .locals 0

    .prologue
    .line 981
    iput-object p1, p0, Lcom/tudou/ui/activity/HomePageActivity$5;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 984
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity$5;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/HomePageActivity;->access$100(Lcom/tudou/ui/activity/HomePageActivity;)Lcom/youku/vo/Initial;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/Initial;->update:Lcom/youku/vo/Initial$Update;

    iget-object v0, v0, Lcom/youku/vo/Initial$Update;->version:Ljava/lang/String;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MoreFragment;->isCurrentVertionDownloaded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 986
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->installApk()V

    .line 987
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity$5;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/HomePageActivity;->finish()V

    .line 996
    :goto_0
    return-void

    .line 990
    :cond_0
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 991
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 995
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity$5;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/ui/activity/HomePageActivity;->access$200(Lcom/tudou/ui/activity/HomePageActivity;Z)V

    goto :goto_0
.end method
