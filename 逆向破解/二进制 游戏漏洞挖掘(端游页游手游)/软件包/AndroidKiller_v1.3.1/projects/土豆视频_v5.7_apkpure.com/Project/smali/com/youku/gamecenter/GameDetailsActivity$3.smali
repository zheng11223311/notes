.class Lcom/youku/gamecenter/GameDetailsActivity$3;
.super Ljava/lang/Object;
.source "GameDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/GameDetailsActivity;->setPresentDatas(Landroid/view/View;Lcom/youku/gamecenter/present/PresentInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameDetailsActivity;

.field final synthetic val$info:Lcom/youku/gamecenter/present/PresentInfo;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameDetailsActivity;Lcom/youku/gamecenter/present/PresentInfo;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/youku/gamecenter/GameDetailsActivity$3;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    iput-object p2, p0, Lcom/youku/gamecenter/GameDetailsActivity$3;->val$info:Lcom/youku/gamecenter/present/PresentInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 547
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity$3;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity$3;->val$info:Lcom/youku/gamecenter/present/PresentInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/present/PresentInfo;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGamePresentDetailsActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 549
    return-void
.end method
