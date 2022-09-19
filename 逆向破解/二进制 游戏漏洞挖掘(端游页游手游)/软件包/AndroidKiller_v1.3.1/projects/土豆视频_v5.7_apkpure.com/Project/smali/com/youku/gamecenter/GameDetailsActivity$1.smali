.class Lcom/youku/gamecenter/GameDetailsActivity$1;
.super Ljava/lang/Object;
.source "GameDetailsActivity.java"

# interfaces
.implements Lcom/youku/gamecenter/services/GetPresentListService$OnPresentListServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/GameDetailsActivity;->fetchPresentInfoById(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameDetailsActivity;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameDetailsActivity;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/youku/gamecenter/GameDetailsActivity$1;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)V
    .locals 1
    .param p1, "failedInfo"    # Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity$1;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameDetailsActivity;->access$000(Lcom/youku/gamecenter/GameDetailsActivity;)V

    .line 434
    return-void
.end method

.method public onSuccess(Lcom/youku/gamecenter/present/PresentListInfo;)V
    .locals 1
    .param p1, "presentListInfo"    # Lcom/youku/gamecenter/present/PresentListInfo;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity$1;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-static {v0, p1}, Lcom/youku/gamecenter/GameDetailsActivity;->access$102(Lcom/youku/gamecenter/GameDetailsActivity;Lcom/youku/gamecenter/present/PresentListInfo;)Lcom/youku/gamecenter/present/PresentListInfo;

    .line 439
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity$1;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameDetailsActivity;->access$000(Lcom/youku/gamecenter/GameDetailsActivity;)V

    .line 440
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity$1;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-static {v0, p1}, Lcom/youku/gamecenter/GameDetailsActivity;->access$200(Lcom/youku/gamecenter/GameDetailsActivity;Lcom/youku/gamecenter/present/PresentListInfo;)V

    .line 441
    return-void
.end method
