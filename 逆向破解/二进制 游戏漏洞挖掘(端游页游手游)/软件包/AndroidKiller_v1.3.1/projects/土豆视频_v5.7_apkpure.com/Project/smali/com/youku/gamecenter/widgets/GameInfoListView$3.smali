.class Lcom/youku/gamecenter/widgets/GameInfoListView$3;
.super Ljava/lang/Object;
.source "GameInfoListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/widgets/GameInfoListView;->setTagCardItem(Lcom/youku/gamecenter/data/GameInfo;Landroid/view/View;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/widgets/GameInfoListView;

.field final synthetic val$game:Lcom/youku/gamecenter/data/GameInfo;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/widgets/GameInfoListView;Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView$3;->this$0:Lcom/youku/gamecenter/widgets/GameInfoListView;

    iput-object p2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView$3;->val$game:Lcom/youku/gamecenter/data/GameInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView$3;->this$0:Lcom/youku/gamecenter/widgets/GameInfoListView;

    invoke-static {v0}, Lcom/youku/gamecenter/widgets/GameInfoListView;->access$000(Lcom/youku/gamecenter/widgets/GameInfoListView;)Lcom/youku/gamecenter/GameBaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView$3;->val$game:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    const-string v2, "11"

    invoke-static {v0, v1, v2}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGameDetailsActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    return-void
.end method
