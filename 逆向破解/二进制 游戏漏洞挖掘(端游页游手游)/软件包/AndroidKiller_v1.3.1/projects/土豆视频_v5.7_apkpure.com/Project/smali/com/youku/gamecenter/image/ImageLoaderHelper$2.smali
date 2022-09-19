.class Lcom/youku/gamecenter/image/ImageLoaderHelper$2;
.super Ljava/lang/Object;
.source "ImageLoaderHelper.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayListenerImage(Ljava/lang/String;Landroid/widget/ImageView;)V
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
    .line 118
    iput-object p1, p0, Lcom/youku/gamecenter/image/ImageLoaderHelper$2;->this$0:Lcom/youku/gamecenter/image/ImageLoaderHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .prologue
    .line 121
    instance-of v1, p2, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 122
    check-cast v0, Landroid/widget/ImageView;

    .line 123
    .local v0, "v":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 125
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
    .line 129
    instance-of v1, p2, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 130
    check-cast v0, Landroid/widget/ImageView;

    .line 131
    .local v0, "v":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 132
    sget-object v1, Lcom/youku/gamecenter/image/ImageLoaderHelper;->IMAGE_LOAD_COMPLETE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 135
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
    .line 139
    instance-of v1, p2, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 140
    check-cast v0, Landroid/widget/ImageView;

    .line 141
    .local v0, "v":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 143
    .end local v0    # "v":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .prologue
    .line 147
    instance-of v1, p2, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 148
    check-cast v0, Landroid/widget/ImageView;

    .line 149
    .local v0, "v":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 150
    sget-object v1, Lcom/youku/gamecenter/image/ImageLoaderHelper;->IMAGE_LOADING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 152
    .end local v0    # "v":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method
