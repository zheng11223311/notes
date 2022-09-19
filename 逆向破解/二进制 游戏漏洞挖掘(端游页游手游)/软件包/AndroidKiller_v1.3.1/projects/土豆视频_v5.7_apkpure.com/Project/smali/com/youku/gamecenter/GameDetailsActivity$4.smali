.class Lcom/youku/gamecenter/GameDetailsActivity$4;
.super Ljava/lang/Object;
.source "GameDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/GameDetailsActivity;->setActivitiesData(Landroid/view/View;Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;Lcom/youku/gamecenter/data/GameInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameDetailsActivity;

.field final synthetic val$gameInfo:Lcom/youku/gamecenter/data/GameInfo;

.field final synthetic val$info:Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameDetailsActivity;Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Lcom/youku/gamecenter/GameDetailsActivity$4;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    iput-object p2, p0, Lcom/youku/gamecenter/GameDetailsActivity$4;->val$info:Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;

    iput-object p3, p0, Lcom/youku/gamecenter/GameDetailsActivity$4;->val$gameInfo:Lcom/youku/gamecenter/data/GameInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 565
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity$4;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity$4;->val$info:Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/gamecenter/GameDetailsActivity$4;->val$gameInfo:Lcom/youku/gamecenter/data/GameInfo;

    const-string v3, "39"

    invoke-static {v0, v1, v2, v3}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchWebActivityWithGameInfo(Landroid/content/Context;Ljava/lang/String;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;)V

    .line 568
    return-void
.end method
