.class Lcom/youku/gamecenter/GameDetailsActivity$2;
.super Ljava/lang/Object;
.source "GameDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/GameDetailsActivity;->callSetUILater(Lcom/youku/gamecenter/present/PresentListInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameDetailsActivity;

.field final synthetic val$presentListInfo:Lcom/youku/gamecenter/present/PresentListInfo;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameDetailsActivity;Lcom/youku/gamecenter/present/PresentListInfo;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lcom/youku/gamecenter/GameDetailsActivity$2;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    iput-object p2, p0, Lcom/youku/gamecenter/GameDetailsActivity$2;->val$presentListInfo:Lcom/youku/gamecenter/present/PresentListInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity$2;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity$2;->val$presentListInfo:Lcom/youku/gamecenter/present/PresentListInfo;

    invoke-static {v0, v1}, Lcom/youku/gamecenter/GameDetailsActivity;->access$200(Lcom/youku/gamecenter/GameDetailsActivity;Lcom/youku/gamecenter/present/PresentListInfo;)V

    .line 531
    return-void
.end method
