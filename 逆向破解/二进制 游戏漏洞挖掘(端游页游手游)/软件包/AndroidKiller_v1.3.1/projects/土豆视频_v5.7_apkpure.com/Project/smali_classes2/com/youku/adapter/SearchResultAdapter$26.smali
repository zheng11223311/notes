.class Lcom/youku/adapter/SearchResultAdapter$26;
.super Ljava/lang/Object;
.source "SearchResultAdapter.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/SearchResultAdapter;->setUserImg(Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/adapter/SearchResultAdapter;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/youku/adapter/SearchResultAdapter;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1978
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$26;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    iput-object p2, p0, Lcom/youku/adapter/SearchResultAdapter$26;->val$view:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/youku/adapter/SearchResultAdapter$26;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .prologue
    .line 2005
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1994
    if-eqz p3, :cond_0

    .line 1995
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$26;->val$view:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter$26;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2000
    :goto_0
    return-void

    .line 1997
    :cond_0
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$26;->val$view:Landroid/widget/ImageView;

    const v1, 0x7f020186

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1998
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$26;->val$view:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 1988
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$26;->val$view:Landroid/widget/ImageView;

    const v1, 0x7f020186

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1989
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$26;->val$view:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1990
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$26;->val$view:Landroid/widget/ImageView;

    const v1, 0x7f020186

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1983
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$26;->val$view:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1984
    return-void
.end method
