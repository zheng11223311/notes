.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter;
.super Landroid/widget/BaseAdapter;
.source "FullscreenFeatureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoFeatureAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->access$300(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;)Lcom/tudou/detail/vo/DetailFeature;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->access$300(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;)Lcom/tudou/detail/vo/DetailFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/detail/vo/DetailFeature;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 188
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v8, 0xcc

    const/4 v7, 0x0

    const/16 v6, 0xff

    const/16 v5, 0x66

    .line 193
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    invoke-virtual {v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300da

    invoke-virtual {v3, v4, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 194
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->access$300(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;)Lcom/tudou/detail/vo/DetailFeature;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/tudou/detail/vo/DetailFeature;->get(I)Lcom/tudou/detail/vo/DetailFeature$Feature;

    move-result-object v0

    .line 196
    .local v0, "f":Lcom/tudou/detail/vo/DetailFeature$Feature;
    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$DetailFeatureItemHolder;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    invoke-direct {v1, v3, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$DetailFeatureItemHolder;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;Landroid/view/View;)V

    .line 197
    .local v1, "holder":Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$DetailFeatureItemHolder;
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/tudou/detail/vo/DetailFeature$Feature;->itemCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    iget-object v3, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$DetailFeatureItemHolder;->mTitle:Landroid/widget/TextView;

    invoke-static {v6, v6, v5, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    iget-object v3, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$DetailFeatureItemHolder;->mDuration:Landroid/widget/TextView;

    invoke-static {v6, v6, v5, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    :goto_0
    iget-object v3, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$DetailFeatureItemHolder;->mTitle:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/tudou/detail/vo/DetailFeature$Feature;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v3, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$DetailFeatureItemHolder;->mDuration:Landroid/widget/TextView;

    iget v4, v0, Lcom/tudou/detail/vo/DetailFeature$Feature;->duration:I

    invoke-static {v4}, Lcom/youku/util/Util;->formatDuration(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v4, v0, Lcom/tudou/detail/vo/DetailFeature$Feature;->img_16_9:Ljava/lang/String;

    iget-object v5, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$DetailFeatureItemHolder;->mPic:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 207
    iget-object v3, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$DetailFeatureItemHolder;->mRoot:Landroid/view/View;

    new-instance v4, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1;

    invoke-direct {v4, p0, v0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter;Lcom/tudou/detail/vo/DetailFeature$Feature;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    return-object v2

    .line 201
    :cond_0
    iget-object v3, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$DetailFeatureItemHolder;->mTitle:Landroid/widget/TextView;

    const/16 v4, 0xc8

    invoke-static {v4, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    iget-object v3, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$DetailFeatureItemHolder;->mDuration:Landroid/widget/TextView;

    invoke-static {v6, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
