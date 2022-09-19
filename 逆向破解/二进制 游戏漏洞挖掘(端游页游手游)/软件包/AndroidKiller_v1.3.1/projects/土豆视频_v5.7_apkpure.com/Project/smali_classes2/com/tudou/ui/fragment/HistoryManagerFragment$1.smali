.class Lcom/tudou/ui/fragment/HistoryManagerFragment$1;
.super Ljava/lang/Object;
.source "HistoryManagerFragment.java"

# interfaces
.implements Lcom/youku/util/IAlertPositive;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/HistoryManagerFragment;->clearPlayHistory(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/HistoryManagerFragment;

.field final synthetic val$currentItem:I


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/HistoryManagerFragment;I)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryManagerFragment;

    iput p2, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment$1;->val$currentItem:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alertPositive(I)V
    .locals 3
    .param p1, "tag"    # I

    .prologue
    const/4 v2, 0x1

    .line 265
    if-nez p1, :cond_0

    .line 266
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryManagerFragment;

    iget v1, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment$1;->val$currentItem:I

    invoke-static {v0, v1, v2}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->access$000(Lcom/tudou/ui/fragment/HistoryManagerFragment;IZ)V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryManagerFragment;

    iget v1, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment$1;->val$currentItem:I

    invoke-static {v0, v1, v2}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->access$100(Lcom/tudou/ui/fragment/HistoryManagerFragment;IZ)V

    goto :goto_0
.end method
