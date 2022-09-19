.class Lcom/youku/gamecenter/adapter/GameRankAdapter$2;
.super Ljava/lang/Object;
.source "GameRankAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/adapter/GameRankAdapter;->onActionButtonClickListener(ILcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/adapter/GameRankAdapter;

.field final synthetic val$holder:Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;

.field final synthetic val$info:Lcom/youku/gamecenter/data/GameInfo;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/adapter/GameRankAdapter;Lcom/youku/gamecenter/data/GameInfo;ILcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter$2;->this$0:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    iput-object p2, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter$2;->val$info:Lcom/youku/gamecenter/data/GameInfo;

    iput p3, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter$2;->val$position:I

    iput-object p4, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter$2;->val$holder:Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 384
    const-string v0, "9"

    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter$2;->this$0:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    invoke-static {v1}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->access$000(Lcom/youku/gamecenter/adapter/GameRankAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter$2;->val$info:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v0, v0, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_NEW:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v0, v1, :cond_0

    .line 386
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter$2;->this$0:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    iget v1, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter$2;->val$position:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter$2;->val$info:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v2, v2, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->access$300(Lcom/youku/gamecenter/adapter/GameRankAdapter;ILjava/lang/String;)V

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter$2;->this$0:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    invoke-static {v0}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->access$200(Lcom/youku/gamecenter/adapter/GameRankAdapter;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter$2;->val$holder:Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;

    iget-object v1, v1, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter$2;->val$position:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter$2;->val$info:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v4, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter$2;->this$0:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    invoke-static {v4}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->access$000(Lcom/youku/gamecenter/adapter/GameRankAdapter;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/youku/gamecenter/util/AppClickActionUtils;->handleDownloadAction(Landroid/content/Context;Landroid/widget/ImageView;ILcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    return-void
.end method
