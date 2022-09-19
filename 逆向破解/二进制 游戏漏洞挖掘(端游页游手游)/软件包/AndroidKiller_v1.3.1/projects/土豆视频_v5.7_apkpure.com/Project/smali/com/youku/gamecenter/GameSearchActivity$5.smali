.class Lcom/youku/gamecenter/GameSearchActivity$5;
.super Ljava/lang/Object;
.source "GameSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/GameSearchActivity;->setHotgames(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameSearchActivity;

.field final synthetic val$gamg_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameSearchActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/youku/gamecenter/GameSearchActivity$5;->this$0:Lcom/youku/gamecenter/GameSearchActivity;

    iput-object p2, p0, Lcom/youku/gamecenter/GameSearchActivity$5;->val$gamg_id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 437
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity$5;->this$0:Lcom/youku/gamecenter/GameSearchActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameSearchActivity;->access$100(Lcom/youku/gamecenter/GameSearchActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity$5;->val$gamg_id:Ljava/lang/String;

    const-string v2, "46"

    invoke-static {v0, v1, v2}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGameDetailsActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    return-void
.end method
