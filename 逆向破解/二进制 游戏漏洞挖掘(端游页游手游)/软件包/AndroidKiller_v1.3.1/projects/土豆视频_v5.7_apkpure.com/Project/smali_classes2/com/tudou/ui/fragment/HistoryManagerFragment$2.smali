.class Lcom/tudou/ui/fragment/HistoryManagerFragment$2;
.super Ljava/lang/Object;
.source "HistoryManagerFragment.java"

# interfaces
.implements Lcom/youku/util/IAlertPositive;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/HistoryManagerFragment;->deletePlayHistory(I)V
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
    .line 293
    iput-object p1, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment$2;->this$0:Lcom/tudou/ui/fragment/HistoryManagerFragment;

    iput p2, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment$2;->val$currentItem:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alertPositive(I)V
    .locals 3
    .param p1, "tag"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 297
    if-nez p1, :cond_0

    .line 298
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    iget v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment$2;->val$currentItem:I

    if-nez v0, :cond_1

    .line 300
    sget-object v0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mCurrentFragment:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mWholeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0, v2, v2}, Lcom/tudou/adapter/HistoryAdapter;->removePlayHistoryFromServer(ZI)V

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment$2;->val$currentItem:I

    if-ne v0, v1, :cond_0

    .line 304
    sget-object v0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mCurrentFragment:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mEpisodeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0, v2, v1}, Lcom/tudou/adapter/HistoryAdapter;->removePlayHistoryFromServer(ZI)V

    goto :goto_0

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment$2;->this$0:Lcom/tudou/ui/fragment/HistoryManagerFragment;

    iget v1, p0, Lcom/tudou/ui/fragment/HistoryManagerFragment$2;->val$currentItem:I

    invoke-static {v0, v1, v2}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->access$100(Lcom/tudou/ui/fragment/HistoryManagerFragment;IZ)V

    goto :goto_0
.end method
