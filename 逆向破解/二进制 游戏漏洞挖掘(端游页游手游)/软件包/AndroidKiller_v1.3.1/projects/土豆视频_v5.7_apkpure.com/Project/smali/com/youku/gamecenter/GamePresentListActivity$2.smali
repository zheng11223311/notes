.class Lcom/youku/gamecenter/GamePresentListActivity$2;
.super Ljava/lang/Object;
.source "GamePresentListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/GamePresentListActivity;->setDownloadStateDelay(Lcom/youku/gamecenter/data/GameInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GamePresentListActivity;

.field final synthetic val$gameInfo:Lcom/youku/gamecenter/data/GameInfo;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GamePresentListActivity;Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/youku/gamecenter/GamePresentListActivity$2;->this$0:Lcom/youku/gamecenter/GamePresentListActivity;

    iput-object p2, p0, Lcom/youku/gamecenter/GamePresentListActivity$2;->val$gameInfo:Lcom/youku/gamecenter/data/GameInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity$2;->this$0:Lcom/youku/gamecenter/GamePresentListActivity;

    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity$2;->val$gameInfo:Lcom/youku/gamecenter/data/GameInfo;

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/GamePresentListActivity;->setDownloadState(Lcom/youku/gamecenter/data/GameInfo;)V

    .line 382
    return-void
.end method
