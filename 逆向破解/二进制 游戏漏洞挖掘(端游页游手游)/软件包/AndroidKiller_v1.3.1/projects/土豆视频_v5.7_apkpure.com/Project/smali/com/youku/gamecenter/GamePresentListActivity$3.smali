.class Lcom/youku/gamecenter/GamePresentListActivity$3;
.super Ljava/lang/Object;
.source "GamePresentListActivity.java"

# interfaces
.implements Lcom/youku/gamecenter/services/GetDetailPageService$OnDetailPageServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/GamePresentListActivity;->getGameInfo(Lcom/youku/gamecenter/present/PresentListInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GamePresentListActivity;

.field final synthetic val$presentListInfo:Lcom/youku/gamecenter/present/PresentListInfo;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GamePresentListActivity;Lcom/youku/gamecenter/present/PresentListInfo;)V
    .locals 0

    .prologue
    .line 618
    iput-object p1, p0, Lcom/youku/gamecenter/GamePresentListActivity$3;->this$0:Lcom/youku/gamecenter/GamePresentListActivity;

    iput-object p2, p0, Lcom/youku/gamecenter/GamePresentListActivity$3;->val$presentListInfo:Lcom/youku/gamecenter/present/PresentListInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)V
    .locals 1
    .param p1, "failedInfo"    # Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    .prologue
    .line 622
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity$3;->this$0:Lcom/youku/gamecenter/GamePresentListActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GamePresentListActivity;->access$600(Lcom/youku/gamecenter/GamePresentListActivity;)V

    .line 623
    return-void
.end method

.method public onSuccess(Lcom/youku/gamecenter/data/GameDetailInfo;)V
    .locals 2
    .param p1, "data"    # Lcom/youku/gamecenter/data/GameDetailInfo;

    .prologue
    .line 627
    if-nez p1, :cond_0

    .line 628
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity$3;->this$0:Lcom/youku/gamecenter/GamePresentListActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GamePresentListActivity;->access$600(Lcom/youku/gamecenter/GamePresentListActivity;)V

    .line 633
    :goto_0
    return-void

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity$3;->this$0:Lcom/youku/gamecenter/GamePresentListActivity;

    iget-object v1, p1, Lcom/youku/gamecenter/data/GameDetailInfo;->app:Lcom/youku/gamecenter/data/GameInfo;

    invoke-static {v0, v1}, Lcom/youku/gamecenter/GamePresentListActivity;->access$302(Lcom/youku/gamecenter/GamePresentListActivity;Lcom/youku/gamecenter/data/GameInfo;)Lcom/youku/gamecenter/data/GameInfo;

    .line 632
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity$3;->this$0:Lcom/youku/gamecenter/GamePresentListActivity;

    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity$3;->val$presentListInfo:Lcom/youku/gamecenter/present/PresentListInfo;

    invoke-static {v0, v1}, Lcom/youku/gamecenter/GamePresentListActivity;->access$700(Lcom/youku/gamecenter/GamePresentListActivity;Lcom/youku/gamecenter/present/PresentListInfo;)V

    goto :goto_0
.end method
