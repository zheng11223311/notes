.class public Lcom/youku/gamecenter/widgets/GameImageShowDialog$GameImageShowAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "GameImageShowDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/widgets/GameImageShowDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GameImageShowAdapter"
.end annotation


# instance fields
.field private imageViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private size:I

.field final synthetic this$0:Lcom/youku/gamecenter/widgets/GameImageShowDialog;


# direct methods
.method public constructor <init>(Lcom/youku/gamecenter/widgets/GameImageShowDialog;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p2, "imageViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ImageView;>;"
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog$GameImageShowAdapter;->this$0:Lcom/youku/gamecenter/widgets/GameImageShowDialog;

    .line 208
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog$GameImageShowAdapter;->size:I

    .line 209
    iput-object p2, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog$GameImageShowAdapter;->imageViews:Ljava/util/List;

    .line 210
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog$GameImageShowAdapter;->size:I

    .line 211
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 225
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/View;
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog$GameImageShowAdapter;->imageViews:Ljava/util/List;

    iget v1, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog$GameImageShowAdapter;->size:I

    rem-int v1, p2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 227
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 215
    const v0, 0x7fffffff

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 231
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/View;
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog$GameImageShowAdapter;->imageViews:Ljava/util/List;

    iget v1, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog$GameImageShowAdapter;->size:I

    rem-int v1, p2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 232
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog$GameImageShowAdapter;->imageViews:Ljava/util/List;

    iget v1, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog$GameImageShowAdapter;->size:I

    rem-int v1, p2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 220
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
