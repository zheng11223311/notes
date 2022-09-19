.class Lcom/youku/adapter/SearchResultAdapter$14;
.super Ljava/lang/Object;
.source "SearchResultAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/SearchResultAdapter;->setCommonDirectView(ILandroid/view/View;Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/adapter/SearchResultAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/youku/adapter/SearchResultAdapter;I)V
    .locals 0

    .prologue
    .line 1131
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$14;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    iput p2, p0, Lcom/youku/adapter/SearchResultAdapter$14;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1134
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter$14;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v1}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter$14;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v1}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/youku/adapter/SearchResultAdapter$14;->val$position:I

    if-gt v1, v2, :cond_1

    .line 1158
    :cond_0
    :goto_0
    return-void

    .line 1136
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1137
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "refercode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "search|directShowClick||key="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/youku/adapter/SearchResultAdapter$14;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v3}, Lcom/youku/adapter/SearchResultAdapter;->access$1500(Lcom/youku/adapter/SearchResultAdapter;)Lcom/tudou/ui/fragment/SearchTudouFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/tudou/ui/fragment/SearchTudouFragment;->tempKeyWord:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/youku/adapter/SearchResultAdapter$14;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v3}, Lcom/youku/adapter/SearchResultAdapter;->access$1500(Lcom/youku/adapter/SearchResultAdapter;)Lcom/tudou/ui/fragment/SearchTudouFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/tudou/ui/fragment/SearchTudouFragment;->keyType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&albumID="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter$14;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v1}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v4, p0, Lcom/youku/adapter/SearchResultAdapter$14;->val$position:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v1, v1, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v1, v1, Lcom/youku/vo/SearchDirectDaoSources;->aid:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    const-string v1, "\u641c\u7d22\u9875\u76f4\u8fbe\u533a\u89c6\u9891\u70b9\u51fb"

    const-class v2, Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u641c\u7d22\u9875-\u76f4\u8fbe\u533a\u89c6\u9891"

    invoke-static {v1, v2, v3, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1145
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter$14;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v1}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/youku/adapter/SearchResultAdapter$14;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v1, v1, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v1, v1, Lcom/youku/vo/SearchDirectDaoSources;->play_mode:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter$14;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v1}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/youku/adapter/SearchResultAdapter$14;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v1, v1, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v1, v1, Lcom/youku/vo/SearchDirectDaoSources;->aid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter$14;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v1}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/youku/adapter/SearchResultAdapter$14;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v1, v1, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v1, v1, Lcom/youku/vo/SearchDirectDaoSources;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 1148
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter$14;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v1}, Lcom/youku/adapter/SearchResultAdapter;->access$1500(Lcom/youku/adapter/SearchResultAdapter;)Lcom/tudou/ui/fragment/SearchTudouFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter$14;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v1}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/youku/adapter/SearchResultAdapter$14;->val$position:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v1, v1, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v3, v1, Lcom/youku/vo/SearchDirectDaoSources;->aid:Ljava/lang/String;

    sget-object v4, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter$14;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v1}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v5, p0, Lcom/youku/adapter/SearchResultAdapter$14;->val$position:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v1, v1, Lcom/youku/vo/SearchDirectDaoShowItem;->title:Ljava/lang/String;

    invoke-static {v2, v3, v4, v1}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1152
    :cond_2
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter$14;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v1}, Lcom/youku/adapter/SearchResultAdapter;->access$1500(Lcom/youku/adapter/SearchResultAdapter;)Lcom/tudou/ui/fragment/SearchTudouFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter$14;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v1}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/youku/adapter/SearchResultAdapter$14;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v1, v1, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v1, v1, Lcom/youku/vo/SearchDirectDaoSources;->items:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter$14;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v2}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/youku/adapter/SearchResultAdapter$14;->val$position:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v4, v2, Lcom/youku/vo/SearchDirectDaoSources;->pay_type:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter$14;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v2}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v5, p0, Lcom/youku/adapter/SearchResultAdapter$14;->val$position:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v5, v2, Lcom/youku/vo/SearchDirectDaoSources;->play_mode:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter$14;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v2}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v6, p0, Lcom/youku/adapter/SearchResultAdapter$14;->val$position:I

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoSources;->aid:Ljava/lang/String;

    invoke-static {v3, v1, v4, v5, v2}, Lcom/tudou/ui/fragment/SearchManager;->playLineOrApp(Landroid/app/Activity;Lcom/youku/vo/SearchDirectDaoShowset;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
