.class Lcom/tudou/adapter/TheShowRankAdapter$2;
.super Ljava/lang/Object;
.source "TheShowRankAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/TheShowRankAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/TheShowRankAdapter;

.field final synthetic val$item:Lcom/youku/vo/TheShowRankResults$TheShowRankResult;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/TheShowRankAdapter;Lcom/youku/vo/TheShowRankResults$TheShowRankResult;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/tudou/adapter/TheShowRankAdapter$2;->this$0:Lcom/tudou/adapter/TheShowRankAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/TheShowRankAdapter$2;->val$item:Lcom/youku/vo/TheShowRankResults$TheShowRankResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/tudou/adapter/TheShowRankAdapter$2;->this$0:Lcom/tudou/adapter/TheShowRankAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/TheShowRankAdapter;->access$100(Lcom/tudou/adapter/TheShowRankAdapter;)Lcom/tudou/ui/fragment/TheShowRankFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/adapter/TheShowRankAdapter$2;->val$item:Lcom/youku/vo/TheShowRankResults$TheShowRankResult;

    iget-object v1, v1, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->itemCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/TheShowRankFragment;->showGiftFragment(Ljava/lang/String;)V

    .line 149
    return-void
.end method
