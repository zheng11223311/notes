.class Lcom/youku/adapter/SearchResultAdapter$6;
.super Ljava/lang/Object;
.source "SearchResultAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/SearchResultAdapter;->setUgcView(ILcom/youku/adapter/SearchResultAdapter$UGCViewHolder;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/adapter/SearchResultAdapter;

.field final synthetic val$position:I

.field final synthetic val$ugcItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/youku/adapter/SearchResultAdapter;ILjava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$6;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    iput p2, p0, Lcom/youku/adapter/SearchResultAdapter$6;->val$position:I

    iput-object p3, p0, Lcom/youku/adapter/SearchResultAdapter$6;->val$ugcItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 620
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$6;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter;->access$1500(Lcom/youku/adapter/SearchResultAdapter;)Lcom/tudou/ui/fragment/SearchTudouFragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 627
    :goto_0
    return-void

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$6;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter$6;->val$position:I

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter$6;->val$ugcItems:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/youku/adapter/SearchResultAdapter;->access$1600(Lcom/youku/adapter/SearchResultAdapter;ILjava/util/ArrayList;)V

    .line 624
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$6;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter;->access$1500(Lcom/youku/adapter/SearchResultAdapter;)Lcom/tudou/ui/fragment/SearchTudouFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$6;->val$ugcItems:Ljava/util/ArrayList;

    iget v2, p0, Lcom/youku/adapter/SearchResultAdapter$6;->val$position:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/TudouUGC;

    iget-object v2, v0, Lcom/youku/vo/TudouUGC;->itemid:Ljava/lang/String;

    sget-object v3, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$6;->val$ugcItems:Ljava/util/ArrayList;

    iget v4, p0, Lcom/youku/adapter/SearchResultAdapter$6;->val$position:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/TudouUGC;

    iget-object v0, v0, Lcom/youku/vo/TudouUGC;->title:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    goto :goto_0
.end method
