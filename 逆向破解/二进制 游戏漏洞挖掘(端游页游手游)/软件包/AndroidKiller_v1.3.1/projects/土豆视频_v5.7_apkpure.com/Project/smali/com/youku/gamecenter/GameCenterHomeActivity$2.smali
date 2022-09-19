.class Lcom/youku/gamecenter/GameCenterHomeActivity$2;
.super Ljava/lang/Object;
.source "GameCenterHomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/GameCenterHomeActivity;->updateTabs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameCenterHomeActivity;

.field final synthetic val$homeIndex:I


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameCenterHomeActivity;I)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/youku/gamecenter/GameCenterHomeActivity$2;->this$0:Lcom/youku/gamecenter/GameCenterHomeActivity;

    iput p2, p0, Lcom/youku/gamecenter/GameCenterHomeActivity$2;->val$homeIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity$2;->this$0:Lcom/youku/gamecenter/GameCenterHomeActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->access$100(Lcom/youku/gamecenter/GameCenterHomeActivity;)Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;

    move-result-object v0

    iget v1, p0, Lcom/youku/gamecenter/GameCenterHomeActivity$2;->val$homeIndex:I

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/fragment/GameHomeFragment;

    iget-object v1, p0, Lcom/youku/gamecenter/GameCenterHomeActivity$2;->this$0:Lcom/youku/gamecenter/GameCenterHomeActivity;

    iget-object v1, v1, Lcom/youku/gamecenter/GameCenterHomeActivity;->mHomePageInfo:Lcom/youku/gamecenter/data/HomePageInfo;

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->onSuccess(Lcom/youku/gamecenter/data/HomePageInfo;)V

    .line 353
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity$2;->this$0:Lcom/youku/gamecenter/GameCenterHomeActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->access$200(Lcom/youku/gamecenter/GameCenterHomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity$2;->this$0:Lcom/youku/gamecenter/GameCenterHomeActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->access$300(Lcom/youku/gamecenter/GameCenterHomeActivity;)V

    .line 356
    :cond_0
    return-void
.end method
