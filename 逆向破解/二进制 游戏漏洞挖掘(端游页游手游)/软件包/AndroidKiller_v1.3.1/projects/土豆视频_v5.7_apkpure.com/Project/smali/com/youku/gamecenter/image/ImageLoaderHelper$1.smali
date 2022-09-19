.class Lcom/youku/gamecenter/image/ImageLoaderHelper$1;
.super Ljava/lang/Object;
.source "ImageLoaderHelper.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayListenerImage(Ljava/lang/String;Landroid/widget/ImageView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/image/ImageLoaderHelper;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/image/ImageLoaderHelper;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/youku/gamecenter/image/ImageLoaderHelper$1;->this$0:Lcom/youku/gamecenter/image/ImageLoaderHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .prologue
    .line 80
    instance-of v1, p2, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 81
    check-cast v0, Landroid/widget/ImageView;

    .line 82
    .local v0, "v":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 84
    .end local v0    # "v":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 89
    instance-of v1, p2, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 90
    check-cast v0, Landroid/widget/ImageView;

    .line 91
    .local v0, "v":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 92
    sget-object v1, Lcom/youku/gamecenter/image/ImageLoaderHelper;->IMAGE_LOAD_COMPLETE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 94
    .end local v0    # "v":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 99
    instance-of v1, p2, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 100
    check-cast v0, Landroid/widget/ImageView;

    .line 101
    .local v0, "v":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 103
    .end local v0    # "v":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .prologue
    .line 107
    instance-of v1, p2, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 108
    check-cast v0, Landroid/widget/ImageView;

    .line 109
    .local v0, "v":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 110
    sget-object v1, Lcom/youku/gamecenter/image/ImageLoaderHelper;->IMAGE_LOADING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 112
    .end local v0    # "v":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method
