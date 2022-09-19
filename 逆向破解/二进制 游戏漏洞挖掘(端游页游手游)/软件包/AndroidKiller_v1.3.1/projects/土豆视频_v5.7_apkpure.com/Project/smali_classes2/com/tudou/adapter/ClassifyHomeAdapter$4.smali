.class Lcom/tudou/adapter/ClassifyHomeAdapter$4;
.super Ljava/lang/Object;
.source "ClassifyHomeAdapter.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/ClassifyHomeAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/ClassifyHomeAdapter;

.field final synthetic val$mChannelListInfo:Lcom/youku/vo/ChannelListInfo;

.field final synthetic val$mViewHolder:Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/ClassifyHomeAdapter;Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;Lcom/youku/vo/ChannelListInfo;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$4;->this$0:Lcom/tudou/adapter/ClassifyHomeAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$4;->val$mViewHolder:Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;

    iput-object p3, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$4;->val$mChannelListInfo:Lcom/youku/vo/ChannelListInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .prologue
    .line 202
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$4;->val$mViewHolder:Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;

    iget-object v0, v0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconTwo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$4;->val$mChannelListInfo:Lcom/youku/vo/ChannelListInfo;

    iget-object v1, v1, Lcom/youku/vo/ChannelListInfo;->normal_icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$4;->val$mViewHolder:Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;

    iget-object v0, v0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconTwo:Landroid/widget/ImageView;

    const v1, 0x7f020622

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 198
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$4;->val$mViewHolder:Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;

    iget-object v0, v0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconTwo:Landroid/widget/ImageView;

    const v1, 0x7f0200e7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 195
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$4;->val$mViewHolder:Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;

    iget-object v0, v0, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconTwo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tudou/adapter/ClassifyHomeAdapter$4;->this$0:Lcom/tudou/adapter/ClassifyHomeAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/ClassifyHomeAdapter;->access$000(Lcom/tudou/adapter/ClassifyHomeAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020622

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 186
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .prologue
    .line 182
    return-void
.end method
