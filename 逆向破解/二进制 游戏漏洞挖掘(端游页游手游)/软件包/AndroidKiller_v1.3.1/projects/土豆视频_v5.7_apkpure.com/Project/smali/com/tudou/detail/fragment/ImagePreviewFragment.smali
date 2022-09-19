.class public Lcom/tudou/detail/fragment/ImagePreviewFragment;
.super Landroid/app/Fragment;
.source "ImagePreviewFragment.java"


# static fields
.field public static final BUNDLE_IMAGE_PATH:Ljava/lang/String; = "bundle.image.path"

.field public static final BUNDLE_IMAGE_TYPE:Ljava/lang/String; = "bundle.image.type"

.field public static final EXTRA_IMAGE_TYPE_LOCAL:Ljava/lang/String; = "extra.image.type.local"

.field public static final EXTRA_IMAGE_TYPE_net:Ljava/lang/String; = "extra.image.type.net"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBtnClose:Landroid/view/View;

.field private mBtnDelete:Landroid/widget/Button;

.field private mImageView:Landroid/widget/ImageView;

.field private mImgPath:Ljava/lang/String;

.field private mImgType:Ljava/lang/String;

.field private mOnCloseListener:Ljava/lang/Runnable;

.field private mOnDeleteListener:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/tudou/detail/fragment/VideoPointFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/fragment/ImagePreviewFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/detail/fragment/ImagePreviewFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/ImagePreviewFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tudou/detail/fragment/ImagePreviewFragment;->mOnDeleteListener:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/detail/fragment/ImagePreviewFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/ImagePreviewFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tudou/detail/fragment/ImagePreviewFragment;->mOnCloseListener:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/detail/fragment/ImagePreviewFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/ImagePreviewFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tudou/detail/fragment/ImagePreviewFragment;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 134
    sget-object v2, Lcom/tudou/detail/fragment/ImagePreviewFragment;->TAG:Ljava/lang/String;

    const-string v3, "onActivityCreated"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lcom/tudou/detail/fragment/ImagePreviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 137
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 138
    const-string v2, "bundle.image.path"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/detail/fragment/ImagePreviewFragment;->mImgPath:Ljava/lang/String;

    .line 139
    const-string v2, "bundle.image.type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/detail/fragment/ImagePreviewFragment;->mImgType:Ljava/lang/String;

    .line 140
    const-string v2, "extra.image.type.local"

    iget-object v3, p0, Lcom/tudou/detail/fragment/ImagePreviewFragment;->mImgType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    iget-object v2, p0, Lcom/tudou/detail/fragment/ImagePreviewFragment;->mBtnDelete:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 142
    iget-object v2, p0, Lcom/tudou/detail/fragment/ImagePreviewFragment;->mImgPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 143
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/tudou/detail/fragment/ImagePreviewFragment;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 157
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v2, p0, Lcom/tudou/detail/fragment/ImagePreviewFragment;->mBtnDelete:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 146
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/detail/fragment/ImagePreviewFragment;->mImgPath:Ljava/lang/String;

    new-instance v4, Lcom/tudou/detail/fragment/ImagePreviewFragment$4;

    invoke-direct {v4, p0}, Lcom/tudou/detail/fragment/ImagePreviewFragment$4;-><init>(Lcom/tudou/detail/fragment/ImagePreviewFragment;)V

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 68
    sget-object v0, Lcom/tudou/detail/fragment/ImagePreviewFragment;->TAG:Ljava/lang/String;

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 70
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    sget-object v0, Lcom/tudou/detail/fragment/ImagePreviewFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    sget-object v1, Lcom/tudou/detail/fragment/ImagePreviewFragment;->TAG:Ljava/lang/String;

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const v1, 0x7f0300ba

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 191
    sget-object v0, Lcom/tudou/detail/fragment/ImagePreviewFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 193
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 185
    sget-object v0, Lcom/tudou/detail/fragment/ImagePreviewFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 187
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 197
    sget-object v0, Lcom/tudou/detail/fragment/ImagePreviewFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 199
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    sget-object v0, Lcom/tudou/detail/fragment/ImagePreviewFragment;->TAG:Ljava/lang/String;

    const-string v1, "onInflate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 64
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 173
    sget-object v0, Lcom/tudou/detail/fragment/ImagePreviewFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 175
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 168
    sget-object v0, Lcom/tudou/detail/fragment/ImagePreviewFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 161
    sget-object v0, Lcom/tudou/detail/fragment/ImagePreviewFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 163
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 179
    sget-object v0, Lcom/tudou/detail/fragment/ImagePreviewFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 181
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 88
    sget-object v0, Lcom/tudou/detail/fragment/ImagePreviewFragment;->TAG:Ljava/lang/String;

    const-string v1, "onViewCreated"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const v0, 0x7f0c0367

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tudou/detail/fragment/ImagePreviewFragment;->mBtnDelete:Landroid/widget/Button;

    .line 90
    const v0, 0x7f0c0366

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/fragment/ImagePreviewFragment;->mBtnClose:Landroid/view/View;

    .line 91
    const v0, 0x7f0c0368

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/ImagePreviewFragment;->mImageView:Landroid/widget/ImageView;

    .line 93
    iget-object v0, p0, Lcom/tudou/detail/fragment/ImagePreviewFragment;->mBtnDelete:Landroid/widget/Button;

    new-instance v1, Lcom/tudou/detail/fragment/ImagePreviewFragment$1;

    invoke-direct {v1, p0}, Lcom/tudou/detail/fragment/ImagePreviewFragment$1;-><init>(Lcom/tudou/detail/fragment/ImagePreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/tudou/detail/fragment/ImagePreviewFragment;->mBtnClose:Landroid/view/View;

    new-instance v1, Lcom/tudou/detail/fragment/ImagePreviewFragment$2;

    invoke-direct {v1, p0}, Lcom/tudou/detail/fragment/ImagePreviewFragment$2;-><init>(Lcom/tudou/detail/fragment/ImagePreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/tudou/detail/fragment/ImagePreviewFragment;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/tudou/detail/fragment/ImagePreviewFragment$3;

    invoke-direct {v1, p0}, Lcom/tudou/detail/fragment/ImagePreviewFragment$3;-><init>(Lcom/tudou/detail/fragment/ImagePreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-void
.end method

.method public setOnCloseListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/tudou/detail/fragment/ImagePreviewFragment;->mOnCloseListener:Ljava/lang/Runnable;

    .line 51
    return-void
.end method

.method public setOnDeleteListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/tudou/detail/fragment/ImagePreviewFragment;->mOnDeleteListener:Ljava/lang/Runnable;

    .line 55
    return-void
.end method
