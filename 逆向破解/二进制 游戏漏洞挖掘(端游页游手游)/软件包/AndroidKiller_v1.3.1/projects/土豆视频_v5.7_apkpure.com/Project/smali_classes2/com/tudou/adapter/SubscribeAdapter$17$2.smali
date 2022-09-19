.class Lcom/tudou/adapter/SubscribeAdapter$17$2;
.super Lcom/tudou/service/download/OnPreparedCallback;
.source "SubscribeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/SubscribeAdapter$17;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

.field final synthetic val$finalitemcode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/SubscribeAdapter$17;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1230
    iput-object p1, p0, Lcom/tudou/adapter/SubscribeAdapter$17$2;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iput-object p2, p0, Lcom/tudou/adapter/SubscribeAdapter$17$2;->val$finalitemcode:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tudou/service/download/OnPreparedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOnePrepared(Ljava/lang/String;)V
    .locals 3
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 1234
    iget-object v1, p0, Lcom/tudou/adapter/SubscribeAdapter$17$2;->val$finalitemcode:Ljava/lang/String;

    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$17$2;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iget-object v2, v2, Lcom/tudou/adapter/SubscribeAdapter$17;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v2}, Lcom/tudou/adapter/SubscribeAdapter;->access$700(Lcom/tudou/adapter/SubscribeAdapter;)Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 1261
    :cond_0
    :goto_0
    return-void

    .line 1236
    :cond_1
    iget-object v1, p0, Lcom/tudou/adapter/SubscribeAdapter$17$2;->val$finalitemcode:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1238
    iget-object v1, p0, Lcom/tudou/adapter/SubscribeAdapter$17$2;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iget-object v1, v1, Lcom/tudou/adapter/SubscribeAdapter$17;->val$finalitem:Lcom/tudou/adapter/SubscribeItem;

    iget-object v1, v1, Lcom/tudou/adapter/SubscribeItem;->txt_cache:Landroid/widget/TextView;

    const-string v2, "\u5df2\u7f13\u5b58"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1240
    iget-object v1, p0, Lcom/tudou/adapter/SubscribeAdapter$17$2;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iget-object v1, v1, Lcom/tudou/adapter/SubscribeAdapter$17;->val$finalitem:Lcom/tudou/adapter/SubscribeItem;

    iget-object v1, v1, Lcom/tudou/adapter/SubscribeItem;->linear_cache:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1242
    iget-object v1, p0, Lcom/tudou/adapter/SubscribeAdapter$17$2;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iget-object v1, v1, Lcom/tudou/adapter/SubscribeAdapter$17;->val$finalitem:Lcom/tudou/adapter/SubscribeItem;

    iget-object v1, v1, Lcom/tudou/adapter/SubscribeItem;->txt_cache:Landroid/widget/TextView;

    const v2, -0x373738

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1244
    iget-object v1, p0, Lcom/tudou/adapter/SubscribeAdapter$17$2;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iget-object v1, v1, Lcom/tudou/adapter/SubscribeAdapter$17;->val$finalitem:Lcom/tudou/adapter/SubscribeItem;

    iget-object v1, v1, Lcom/tudou/adapter/SubscribeItem;->img_cache:Landroid/widget/ImageView;

    const v2, 0x7f0208b7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1247
    :try_start_0
    iget-object v1, p0, Lcom/tudou/adapter/SubscribeAdapter$17$2;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iget-object v1, v1, Lcom/tudou/adapter/SubscribeAdapter$17;->val$user:Lcom/youku/vo/SubscribeBean$UserInfo;

    iget v1, v1, Lcom/youku/vo/SubscribeBean$UserInfo;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 1248
    iget-object v1, p0, Lcom/tudou/adapter/SubscribeAdapter$17$2;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iget-object v1, v1, Lcom/tudou/adapter/SubscribeAdapter$17;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/SubscribeAdapter;->access$800(Lcom/tudou/adapter/SubscribeAdapter;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1249
    iget-object v1, p0, Lcom/tudou/adapter/SubscribeAdapter$17$2;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iget-object v1, v1, Lcom/tudou/adapter/SubscribeAdapter$17;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/SubscribeAdapter;->access$000(Lcom/tudou/adapter/SubscribeAdapter;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/fragment/SubscribeFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeFragmentStatePagerAdapter:Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;

    iget-object v1, v1, Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;->allfragment:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->adapter:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/SubscribeAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1258
    :catch_0
    move-exception v0

    .line 1259
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1253
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/tudou/adapter/SubscribeAdapter$17$2;->this$1:Lcom/tudou/adapter/SubscribeAdapter$17;

    iget-object v1, v1, Lcom/tudou/adapter/SubscribeAdapter$17;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/SubscribeAdapter;->access$000(Lcom/tudou/adapter/SubscribeAdapter;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/fragment/SubscribeFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SubscribeFragment;->mSubscribeFragmentStatePagerAdapter:Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;

    iget-object v1, v1, Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;->isAlbumfragment:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->adapter:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/SubscribeAdapter;->notifyDataSetChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onfinish(Z)V
    .locals 0
    .param p1, "isNeedRefresh"    # Z

    .prologue
    .line 1266
    return-void
.end method
