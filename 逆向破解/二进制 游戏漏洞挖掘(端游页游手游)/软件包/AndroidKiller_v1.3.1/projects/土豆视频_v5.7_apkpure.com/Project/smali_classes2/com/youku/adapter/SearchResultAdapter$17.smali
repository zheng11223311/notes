.class Lcom/youku/adapter/SearchResultAdapter$17;
.super Ljava/lang/Object;
.source "SearchResultAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/SearchResultAdapter;->initARTSLayoutBottom(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/adapter/SearchResultAdapter;

.field final synthetic val$holder:Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/youku/adapter/SearchResultAdapter;Lcom/youku/adapter/SearchResultAdapter$ViewHolder;I)V
    .locals 0

    .prologue
    .line 1338
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$17;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    iput-object p2, p0, Lcom/youku/adapter/SearchResultAdapter$17;->val$holder:Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    iput p3, p0, Lcom/youku/adapter/SearchResultAdapter$17;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 1342
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$17;->val$holder:Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$100(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ViewSwitcher;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 1343
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$17;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter$17;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowItem;

    iput v2, v0, Lcom/youku/vo/SearchDirectDaoShowItem;->page:I

    .line 1344
    const-string v0, "\u641c\u7d22\u9875\u76f4\u8fbe\u533a\u66f4\u591a\u6309\u94ae\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u641c\u7d22\u7ed3\u679c\uff0d\u76f4\u8fbe\u533a\u66f4\u591a\u6309\u94ae"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    return-void
.end method
