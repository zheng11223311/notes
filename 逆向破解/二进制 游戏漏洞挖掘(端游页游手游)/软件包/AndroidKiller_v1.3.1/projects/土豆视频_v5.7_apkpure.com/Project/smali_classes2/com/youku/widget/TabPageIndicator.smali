.class public Lcom/youku/widget/TabPageIndicator;
.super Landroid/widget/HorizontalScrollView;
.source "TabPageIndicator.java"

# interfaces
.implements Lcom/youku/widget/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/widget/TabPageIndicator$TabView;,
        Lcom/youku/widget/TabPageIndicator$OnTabReselectedListener;
    }
.end annotation


# static fields
.field private static final EMPTY_TITLE:Ljava/lang/CharSequence;


# instance fields
.field private mAutoWidth:Z

.field private mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mMaxTabWidth:I

.field private mSelectedTabIndex:I

.field private mShowCursor:Z

.field private final mTabClickListener:Landroid/view/View$OnClickListener;

.field private final mTabLayout:Lcom/youku/widget/IcsLinearLayout;

.field private mTabLayoutResId:I

.field private mTabReselectedListener:Lcom/youku/widget/TabPageIndicator$OnTabReselectedListener;

.field private mTabSelector:Ljava/lang/Runnable;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, ""

    sput-object v0, Lcom/youku/widget/TabPageIndicator;->EMPTY_TITLE:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/youku/widget/TabPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    new-instance v0, Lcom/youku/widget/TabPageIndicator$1;

    invoke-direct {v0, p0}, Lcom/youku/widget/TabPageIndicator$1;-><init>(Lcom/youku/widget/TabPageIndicator;)V

    iput-object v0, p0, Lcom/youku/widget/TabPageIndicator;->mTabClickListener:Landroid/view/View$OnClickListener;

    .line 91
    iput-boolean v1, p0, Lcom/youku/widget/TabPageIndicator;->mShowCursor:Z

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/widget/TabPageIndicator;->mAutoWidth:Z

    .line 102
    invoke-virtual {p0, v1}, Lcom/youku/widget/TabPageIndicator;->setHorizontalScrollBarEnabled(Z)V

    .line 104
    new-instance v0, Lcom/youku/widget/IcsLinearLayout;

    const v1, 0x7f0100aa

    invoke-direct {v0, p1, v1}, Lcom/youku/widget/IcsLinearLayout;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/youku/widget/TabPageIndicator;->mTabLayout:Lcom/youku/widget/IcsLinearLayout;

    .line 105
    iget-object v0, p0, Lcom/youku/widget/TabPageIndicator;->mTabLayout:Lcom/youku/widget/IcsLinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/youku/widget/TabPageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/youku/widget/TabPageIndicator;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/TabPageIndicator;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/youku/widget/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/widget/TabPageIndicator;)Lcom/youku/widget/TabPageIndicator$OnTabReselectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/TabPageIndicator;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/youku/widget/TabPageIndicator;->mTabReselectedListener:Lcom/youku/widget/TabPageIndicator$OnTabReselectedListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/youku/widget/TabPageIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/youku/widget/TabPageIndicator;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/youku/widget/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/youku/widget/TabPageIndicator;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/TabPageIndicator;

    .prologue
    .line 46
    iget v0, p0, Lcom/youku/widget/TabPageIndicator;->mMaxTabWidth:I

    return v0
.end method

.method private addTab(ILjava/lang/CharSequence;I)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "iconResId"    # I

    .prologue
    .line 195
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/youku/widget/TabPageIndicator;->addTab(ILjava/lang/CharSequence;II)V

    .line 196
    return-void
.end method

.method private addTab(ILjava/lang/CharSequence;II)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "iconResId"    # I
    .param p4, "itemLayoutId"    # I

    .prologue
    const/4 v3, 0x0

    .line 199
    new-instance v1, Lcom/youku/widget/TabPageIndicator$TabView;

    invoke-virtual {p0}, Lcom/youku/widget/TabPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, p4}, Lcom/youku/widget/TabPageIndicator$TabView;-><init>(Lcom/youku/widget/TabPageIndicator;Landroid/content/Context;I)V

    .line 200
    .local v1, "tabView":Lcom/youku/widget/TabPageIndicator$TabView;
    invoke-static {v1, p1}, Lcom/youku/widget/TabPageIndicator$TabView;->access$302(Lcom/youku/widget/TabPageIndicator$TabView;I)I

    .line 201
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/youku/widget/TabPageIndicator$TabView;->setFocusable(Z)V

    .line 202
    iget-object v2, p0, Lcom/youku/widget/TabPageIndicator;->mTabClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/youku/widget/TabPageIndicator$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    invoke-virtual {v1, p2}, Lcom/youku/widget/TabPageIndicator$TabView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/youku/widget/TabPageIndicator$TabView;->setGravity(I)V

    .line 205
    if-eqz p3, :cond_0

    .line 206
    invoke-virtual {v1, p3, v3, v3, v3}, Lcom/youku/widget/TabPageIndicator$TabView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 208
    :cond_0
    iget-boolean v2, p0, Lcom/youku/widget/TabPageIndicator;->mAutoWidth:Z

    if-eqz v2, :cond_1

    .line 209
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 210
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x10

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 211
    iget-object v2, p0, Lcom/youku/widget/TabPageIndicator;->mTabLayout:Lcom/youku/widget/IcsLinearLayout;

    invoke-virtual {v2, v1, v0}, Lcom/youku/widget/IcsLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v2, p0, Lcom/youku/widget/TabPageIndicator;->mTabLayout:Lcom/youku/widget/IcsLinearLayout;

    invoke-virtual {v2, v1}, Lcom/youku/widget/IcsLinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private animateToTab(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 163
    iget-object v1, p0, Lcom/youku/widget/TabPageIndicator;->mTabLayout:Lcom/youku/widget/IcsLinearLayout;

    invoke-virtual {v1, p1}, Lcom/youku/widget/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 164
    .local v0, "tabView":Landroid/view/View;
    iget-object v1, p0, Lcom/youku/widget/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/youku/widget/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/youku/widget/TabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 167
    :cond_0
    new-instance v1, Lcom/youku/widget/TabPageIndicator$2;

    invoke-direct {v1, p0, v0}, Lcom/youku/widget/TabPageIndicator$2;-><init>(Lcom/youku/widget/TabPageIndicator;Landroid/view/View;)V

    iput-object v1, p0, Lcom/youku/widget/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    .line 174
    iget-object v1, p0, Lcom/youku/widget/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/youku/widget/TabPageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 175
    return-void
.end method


# virtual methods
.method public isShowCursor()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/youku/widget/TabPageIndicator;->mShowCursor:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 7

    .prologue
    .line 265
    iget-object v6, p0, Lcom/youku/widget/TabPageIndicator;->mTabLayout:Lcom/youku/widget/IcsLinearLayout;

    invoke-virtual {v6}, Lcom/youku/widget/IcsLinearLayout;->removeAllViews()V

    .line 266
    iget-object v6, p0, Lcom/youku/widget/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 267
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    const/4 v3, 0x0

    .line 268
    .local v3, "iconAdapter":Lcom/youku/widget/IconPagerAdapter;
    instance-of v6, v0, Lcom/youku/widget/IconPagerAdapter;

    if-eqz v6, :cond_0

    move-object v3, v0

    .line 269
    check-cast v3, Lcom/youku/widget/IconPagerAdapter;

    .line 271
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    .line 272
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 273
    invoke-virtual {v0, v2}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 274
    .local v5, "title":Ljava/lang/CharSequence;
    if-nez v5, :cond_1

    .line 275
    sget-object v5, Lcom/youku/widget/TabPageIndicator;->EMPTY_TITLE:Ljava/lang/CharSequence;

    .line 277
    :cond_1
    const/4 v4, 0x0

    .line 278
    .local v4, "iconResId":I
    if-eqz v3, :cond_2

    .line 279
    invoke-interface {v3, v2}, Lcom/youku/widget/IconPagerAdapter;->getIconResId(I)I

    move-result v4

    .line 281
    :cond_2
    iget v6, p0, Lcom/youku/widget/TabPageIndicator;->mTabLayoutResId:I

    if-nez v6, :cond_3

    .line 282
    invoke-direct {p0, v2, v5, v4}, Lcom/youku/widget/TabPageIndicator;->addTab(ILjava/lang/CharSequence;I)V

    .line 272
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    :cond_3
    iget v6, p0, Lcom/youku/widget/TabPageIndicator;->mTabLayoutResId:I

    invoke-direct {p0, v2, v5, v4, v6}, Lcom/youku/widget/TabPageIndicator;->addTab(ILjava/lang/CharSequence;II)V

    goto :goto_1

    .line 287
    .end local v4    # "iconResId":I
    .end local v5    # "title":Ljava/lang/CharSequence;
    :cond_4
    iget v6, p0, Lcom/youku/widget/TabPageIndicator;->mSelectedTabIndex:I

    if-le v6, v1, :cond_5

    .line 288
    add-int/lit8 v6, v1, -0x1

    iput v6, p0, Lcom/youku/widget/TabPageIndicator;->mSelectedTabIndex:I

    .line 290
    :cond_5
    iget v6, p0, Lcom/youku/widget/TabPageIndicator;->mSelectedTabIndex:I

    invoke-virtual {p0, v6}, Lcom/youku/widget/TabPageIndicator;->setCurrentItem(I)V

    .line 291
    invoke-virtual {p0}, Lcom/youku/widget/TabPageIndicator;->requestLayout()V

    .line 292
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 180
    iget-object v0, p0, Lcom/youku/widget/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/youku/widget/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/youku/widget/TabPageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 184
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 189
    iget-object v0, p0, Lcom/youku/widget/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/youku/widget/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/youku/widget/TabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 192
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v6, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    .line 122
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 123
    .local v5, "widthMode":I
    if-ne v5, v8, :cond_3

    move v2, v6

    .line 124
    .local v2, "lockedExpanded":Z
    :goto_0
    invoke-virtual {p0, v2}, Lcom/youku/widget/TabPageIndicator;->setFillViewport(Z)V

    .line 126
    iget-object v7, p0, Lcom/youku/widget/TabPageIndicator;->mTabLayout:Lcom/youku/widget/IcsLinearLayout;

    invoke-virtual {v7}, Lcom/youku/widget/IcsLinearLayout;->getChildCount()I

    move-result v0

    .line 127
    .local v0, "childCount":I
    if-le v0, v6, :cond_5

    if-eq v5, v8, :cond_0

    const/high16 v6, -0x80000000

    if-ne v5, v6, :cond_5

    .line 128
    :cond_0
    const/4 v6, 0x2

    if-le v0, v6, :cond_4

    .line 129
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/youku/widget/TabPageIndicator;->mMaxTabWidth:I

    .line 137
    :goto_1
    invoke-virtual {p0}, Lcom/youku/widget/TabPageIndicator;->getMeasuredWidth()I

    move-result v4

    .line 138
    .local v4, "oldWidth":I
    const/4 v1, 0x0

    .line 139
    .local v1, "h":I
    invoke-virtual {p0}, Lcom/youku/widget/TabPageIndicator;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/youku/widget/TabPageIndicator;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 144
    :cond_1
    if-eqz v1, :cond_6

    .line 145
    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-super {p0, p1, v6}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 150
    :goto_2
    invoke-virtual {p0}, Lcom/youku/widget/TabPageIndicator;->getMeasuredWidth()I

    move-result v3

    .line 152
    .local v3, "newWidth":I
    if-eqz v2, :cond_2

    if-eq v4, v3, :cond_2

    iget-object v6, p0, Lcom/youku/widget/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v6, :cond_2

    .line 154
    iget v6, p0, Lcom/youku/widget/TabPageIndicator;->mSelectedTabIndex:I

    invoke-virtual {p0, v6}, Lcom/youku/widget/TabPageIndicator;->setCurrentItem(I)V

    .line 156
    :cond_2
    return-void

    .line 123
    .end local v0    # "childCount":I
    .end local v1    # "h":I
    .end local v2    # "lockedExpanded":Z
    .end local v3    # "newWidth":I
    .end local v4    # "oldWidth":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 131
    .restart local v0    # "childCount":I
    .restart local v2    # "lockedExpanded":Z
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/youku/widget/TabPageIndicator;->mMaxTabWidth:I

    goto :goto_1

    .line 134
    :cond_5
    const/4 v6, -0x1

    iput v6, p0, Lcom/youku/widget/TabPageIndicator;->mMaxTabWidth:I

    goto :goto_1

    .line 147
    .restart local v1    # "h":I
    .restart local v4    # "oldWidth":I
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    goto :goto_2
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 223
    iget-object v0, p0, Lcom/youku/widget/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/youku/widget/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 226
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lcom/youku/widget/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/youku/widget/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 233
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lcom/youku/widget/TabPageIndicator;->setCurrentItem(I)V

    .line 238
    iget-object v0, p0, Lcom/youku/widget/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/youku/widget/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 241
    :cond_0
    return-void
.end method

.method public setAutoWidth(Z)V
    .locals 0
    .param p1, "auto"    # Z

    .prologue
    .line 218
    iput-boolean p1, p0, Lcom/youku/widget/TabPageIndicator;->mAutoWidth:Z

    .line 219
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 7
    .param p1, "item"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 302
    iget-object v6, p0, Lcom/youku/widget/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v6, :cond_0

    .line 304
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "ViewPager has not been bound."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 306
    :cond_0
    iput p1, p0, Lcom/youku/widget/TabPageIndicator;->mSelectedTabIndex:I

    .line 307
    iget-object v6, p0, Lcom/youku/widget/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 309
    iget-object v6, p0, Lcom/youku/widget/TabPageIndicator;->mTabLayout:Lcom/youku/widget/IcsLinearLayout;

    invoke-virtual {v6}, Lcom/youku/widget/IcsLinearLayout;->getChildCount()I

    move-result v3

    .line 310
    .local v3, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_6

    .line 311
    iget-object v6, p0, Lcom/youku/widget/TabPageIndicator;->mTabLayout:Lcom/youku/widget/IcsLinearLayout;

    invoke-virtual {v6, v1}, Lcom/youku/widget/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/TabPageIndicator$TabView;

    .line 312
    .local v0, "child":Lcom/youku/widget/TabPageIndicator$TabView;
    if-ne v1, p1, :cond_3

    move v2, v4

    .line 313
    .local v2, "isSelected":Z
    :goto_1
    invoke-virtual {v0, v2}, Lcom/youku/widget/TabPageIndicator$TabView;->setSelected(Z)V

    .line 314
    const v6, -0xc3c3c4

    invoke-virtual {v0, v6}, Lcom/youku/widget/TabPageIndicator$TabView;->setTextColor(I)V

    .line 315
    add-int/lit8 v6, v3, -0x1

    if-ne v1, v6, :cond_4

    move v6, v5

    :goto_2
    invoke-virtual {v0, v6}, Lcom/youku/widget/TabPageIndicator$TabView;->setLineVisible(Z)V

    .line 316
    if-eqz v2, :cond_1

    .line 317
    const v6, -0x9a00

    invoke-virtual {v0, v6}, Lcom/youku/widget/TabPageIndicator$TabView;->setTextColor(I)V

    .line 321
    :cond_1
    iget-boolean v6, p0, Lcom/youku/widget/TabPageIndicator;->mShowCursor:Z

    if-eqz v6, :cond_2

    .line 322
    if-eqz v2, :cond_5

    move v6, v4

    :goto_3
    invoke-virtual {v0, v6}, Lcom/youku/widget/TabPageIndicator$TabView;->setBottomLineVisible(Z)V

    .line 310
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "isSelected":Z
    :cond_3
    move v2, v5

    .line 312
    goto :goto_1

    .restart local v2    # "isSelected":Z
    :cond_4
    move v6, v4

    .line 315
    goto :goto_2

    :cond_5
    move v6, v5

    .line 322
    goto :goto_3

    .line 325
    .end local v0    # "child":Lcom/youku/widget/TabPageIndicator$TabView;
    .end local v2    # "isSelected":Z
    :cond_6
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/youku/widget/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 330
    return-void
.end method

.method public setOnTabReselectedListener(Lcom/youku/widget/TabPageIndicator$OnTabReselectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/widget/TabPageIndicator$OnTabReselectedListener;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/youku/widget/TabPageIndicator;->mTabReselectedListener:Lcom/youku/widget/TabPageIndicator$OnTabReselectedListener;

    .line 118
    return-void
.end method

.method public setShowCursor(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/youku/widget/TabPageIndicator;->mShowCursor:Z

    .line 110
    return-void
.end method

.method public setTabItemLayoutResId(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 159
    iput p1, p0, Lcom/youku/widget/TabPageIndicator;->mTabLayoutResId:I

    .line 160
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 1
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/youku/widget/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;Z)V

    .line 246
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;
    .param p2, "initialPosition"    # I

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Lcom/youku/widget/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 297
    invoke-virtual {p0, p2}, Lcom/youku/widget/TabPageIndicator;->setCurrentItem(I)V

    .line 298
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;Z)V
    .locals 3
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;
    .param p2, "force"    # Z

    .prologue
    .line 249
    iget-object v1, p0, Lcom/youku/widget/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v1, p1, :cond_0

    if-nez p2, :cond_0

    .line 262
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/youku/widget/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/youku/widget/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 255
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 256
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    if-nez v0, :cond_2

    .line 257
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ViewPager does not have adapter instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 259
    :cond_2
    iput-object p1, p0, Lcom/youku/widget/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 260
    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 261
    invoke-virtual {p0}, Lcom/youku/widget/TabPageIndicator;->notifyDataSetChanged()V

    goto :goto_0
.end method
