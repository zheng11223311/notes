.class Lcom/tudou/ui/activity/HomePageActivity$7;
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
    .line 1020
    iput-object p1, p0, Lcom/tudou/ui/activity/HomePageActivity$7;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    iput-object p2, p0, Lcom/tudou/ui/activity/HomePageActivity$7;->val$dialog:Lcom/youku/widget/TudouDialog;

    iput-object p3, p0, Lcom/tudou/ui/activity/HomePageActivity$7;->val$initial:Lcom/youku/vo/Initial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity$7;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 1024
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity$7;->val$initial:Lcom/youku/vo/Initial;

    iget-object v0, v0, Lcom/youku/vo/Initial;->update:Lcom/youku/vo/Initial$Update;

    iget-object v0, v0, Lcom/youku/vo/Initial$Update;->version:Ljava/lang/String;

    iget-object v1, p0, Lcom/tudou/ui/activity/HomePageActivity$7;->val$initial:Lcom/youku/vo/Initial;

    iget-object v1, v1, Lcom/youku/vo/Initial;->update:Lcom/youku/vo/Initial$Update;

    iget-object v1, v1, Lcom/youku/vo/Initial$Update;->download:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/tudou/ui/fragment/MoreFragment;->startUpdateDownload(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1028
    return-void
.end method
