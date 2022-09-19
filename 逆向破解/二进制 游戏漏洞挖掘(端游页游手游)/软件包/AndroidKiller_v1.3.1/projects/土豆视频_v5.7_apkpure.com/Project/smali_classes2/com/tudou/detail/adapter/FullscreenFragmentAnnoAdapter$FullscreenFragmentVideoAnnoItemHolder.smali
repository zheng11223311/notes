.class public Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter$FullscreenFragmentVideoAnnoItemHolder;
.super Ljava/lang/Object;
.source "FullscreenFragmentAnnoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FullscreenFragmentVideoAnnoItemHolder"
.end annotation


# instance fields
.field public anno:Lcom/tudou/detail/vo/Annotation;

.field content:Landroid/view/View;

.field final synthetic this$0:Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;Landroid/view/View;)V
    .locals 1
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter$FullscreenFragmentVideoAnnoItemHolder;->this$0:Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p2, p0, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter$FullscreenFragmentVideoAnnoItemHolder;->content:Landroid/view/View;

    .line 184
    const v0, 0x7f0c03d5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter$FullscreenFragmentVideoAnnoItemHolder;->title:Landroid/widget/TextView;

    .line 185
    return-void
.end method
