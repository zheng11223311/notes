.class public Lcom/youku/gamecenter/widgets/GameImageShowDialog;
.super Landroid/app/Dialog;
.source "GameImageShowDialog.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/widgets/GameImageShowDialog$GameImageShowAdapter;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/youku/gamecenter/widgets/GameImageShowDialog;


# instance fields
.field private mAdapter:Lcom/youku/gamecenter/widgets/GameImageShowDialog$GameImageShowAdapter;

.field private mCount:I

.field private mDefaultImageRId:I

.field private mImageType:I

.field private mImageViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPointContainer:Landroid/widget/LinearLayout;

.field private mPointImageViews:[Landroid/widget/ImageView;

.field private mPosition:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p4, "mPosition"    # I
    .param p5, "mImageType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p3, "mImages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mImages:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mImageViews:Ljava/util/List;

    .line 42
    const/4 v0, 0x6

    iput v0, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mCount:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mPosition:I

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mImageType:I

    .line 48
    sget v0, Lcom/youku/gamecenter/R$drawable;->screenshot_default_horizontal:I

    iput v0, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mDefaultImageRId:I

    .line 55
    iput-object p3, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mImages:Ljava/util/List;

    .line 56
    iput p4, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mPosition:I

    .line 57
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mCount:I

    .line 58
    iput p5, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mImageType:I

    .line 59
    return-void
.end method

.method private initAdapter()V
    .locals 3

    .prologue
    .line 101
    new-instance v0, Lcom/youku/gamecenter/widgets/GameImageShowDialog$GameImageShowAdapter;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mImageViews:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/youku/gamecenter/widgets/GameImageShowDialog$GameImageShowAdapter;-><init>(Lcom/youku/gamecenter/widgets/GameImageShowDialog;Ljava/util/List;)V

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mAdapter:Lcom/youku/gamecenter/widgets/GameImageShowDialog$GameImageShowAdapter;

    .line 102
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mAdapter:Lcom/youku/gamecenter/widgets/GameImageShowDialog$GameImageShowAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 103
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 105
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mCount:I

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mPosition:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 106
    return-void
.end method

.method private initDatas()V
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mCount:I

    iget v1, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mPosition:I

    invoke-virtual {p0, v0, v1}, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->initPoints(II)V

    .line 94
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->initImageViews()V

    .line 96
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->initAdapter()V

    .line 97
    return-void
.end method

.method private initImageViews()V
    .locals 5

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->isImagePortrait()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    sget v2, Lcom/youku/gamecenter/R$drawable;->screenshot_default_portrait:I

    iput v2, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mDefaultImageRId:I

    .line 113
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget v3, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mCount:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mImageViews:Ljava/util/List;

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mCount:I

    if-ge v0, v2, :cond_1

    .line 115
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 116
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-static {}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->getInstance()Lcom/youku/gamecenter/image/ImageLoaderHelper;

    move-result-object v3

    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mImages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget v4, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mDefaultImageRId:I

    invoke-virtual {v3, v2, v1, v4}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 118
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mImageViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v2, Lcom/youku/gamecenter/widgets/GameImageShowDialog$1;

    invoke-direct {v2, p0}, Lcom/youku/gamecenter/widgets/GameImageShowDialog$1;-><init>(Lcom/youku/gamecenter/widgets/GameImageShowDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_1
    return-void
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 86
    sget v0, Lcom/youku/gamecenter/R$layout;->layout_game_details_image_viewpager:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->setContentView(I)V

    .line 87
    sget v0, Lcom/youku/gamecenter/R$id;->game_details_img_tip_layout:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mPointContainer:Landroid/widget/LinearLayout;

    .line 88
    sget v0, Lcom/youku/gamecenter/R$id;->game_details_viewpager:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 89
    return-void
.end method

.method private static isContextVaild(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 179
    if-nez p0, :cond_1

    .line 183
    .end local p0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return v0

    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isImagePortrait()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 174
    iget v1, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mImageType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPointBackground(I)V
    .locals 3
    .param p1, "selectItems"    # I

    .prologue
    .line 161
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mPointImageViews:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 162
    if-ne v0, p1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mPointImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    sget v2, Lcom/youku/gamecenter/R$drawable;->point_selected:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 161
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mPointImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    sget v2, Lcom/youku/gamecenter/R$drawable;->point_normal:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 170
    :cond_1
    return-void
.end method

.method public static showImageViews(Landroid/content/Context;Ljava/util/List;II)Lcom/youku/gamecenter/widgets/GameImageShowDialog;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "mPosition"    # I
    .param p3, "mImageType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)",
            "Lcom/youku/gamecenter/widgets/GameImageShowDialog;"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "mImages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->isContextVaild(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    .line 66
    :cond_0
    sget-object v0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->sInstance:Lcom/youku/gamecenter/widgets/GameImageShowDialog;

    if-nez v0, :cond_1

    .line 67
    new-instance v0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;

    sget v2, Lcom/youku/gamecenter/R$style;->GameImageTransparent:I

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/youku/gamecenter/widgets/GameImageShowDialog;-><init>(Landroid/content/Context;ILjava/util/List;II)V

    sput-object v0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->sInstance:Lcom/youku/gamecenter/widgets/GameImageShowDialog;

    .line 70
    :try_start_0
    sget-object v0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->sInstance:Lcom/youku/gamecenter/widgets/GameImageShowDialog;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_1
    :goto_1
    sget-object v0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->sInstance:Lcom/youku/gamecenter/widgets/GameImageShowDialog;

    goto :goto_0

    .line 71
    :catch_0
    move-exception v6

    .line 72
    .local v6, "e":Landroid/view/WindowManager$BadTokenException;
    const-string v0, "GameImageShowDialog"

    const-string v1, "context is error!!!"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 240
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->sInstance:Lcom/youku/gamecenter/widgets/GameImageShowDialog;

    .line 241
    return-void
.end method

.method public initPoints(II)V
    .locals 4
    .param p1, "count"    # I
    .param p2, "position"    # I

    .prologue
    .line 132
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mPointContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 134
    if-gtz p1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    new-array v1, p1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mPointImageViews:[Landroid/widget/ImageView;

    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 140
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mPointImageViews:[Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 141
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mPointImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    sget v2, Lcom/youku/gamecenter/R$drawable;->point_normal:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 142
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mPointContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mPointImageViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    :cond_2
    if-le p2, p1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mPointImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, p2

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mPointImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, p2

    sget v2, Lcom/youku/gamecenter/R$drawable;->point_selected:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->initViews()V

    .line 82
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->initDatas()V

    .line 83
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 189
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 194
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 198
    iget v0, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->mCount:I

    rem-int v0, p1, v0

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->setPointBackground(I)V

    .line 200
    return-void
.end method
