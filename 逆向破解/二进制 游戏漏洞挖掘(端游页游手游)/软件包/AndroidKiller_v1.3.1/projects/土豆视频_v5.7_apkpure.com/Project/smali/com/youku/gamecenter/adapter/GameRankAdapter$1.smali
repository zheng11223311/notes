.class Lcom/youku/gamecenter/adapter/GameRankAdapter$1;
.super Ljava/lang/Object;
.source "GameRankAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/adapter/GameRankAdapter;->onItemClickListener(ILcom/youku/gamecenter/data/GameInfo;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/adapter/GameRankAdapter;

.field final synthetic val$info:Lcom/youku/gamecenter/data/GameInfo;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/adapter/GameRankAdapter;ILcom/youku/gamecenter/data/GameInfo;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter$1;->this$0:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    iput p2, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter$1;->val$info:Lcom/youku/gamecenter/data/GameInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 361
    const-string v0, "9"

    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter$1;->this$0:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    invoke-static {v1}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->access$000(Lcom/youku/gamecenter/adapter/GameRankAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter$1;->this$0:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    iget v1, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter$1;->val$position:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter$1;->val$info:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v2, v2, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->access$100(Lcom/youku/gamecenter/adapter/GameRankAdapter;ILjava/lang/String;)V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter$1;->this$0:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    invoke-static {v0}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->access$200(Lcom/youku/gamecenter/adapter/GameRankAdapter;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter$1;->val$info:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter$1;->this$0:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    invoke-static {v2}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->access$000(Lcom/youku/gamecenter/adapter/GameRankAdapter;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter$1;->val$position:I

    invoke-static {v0, v1, v2, v3}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGameDetailsActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 365
    return-void
.end method
