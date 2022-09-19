.class public Lcom/alipay/android/mini/uielement/UITableView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/mini/uielement/UITableView$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x10

.field public static final b:I = 0x11

.field public static final c:I = 0x12

.field public static final d:I = 0x13

.field public static final e:I = 0x10

.field public static final f:I = 0x11

.field public static final g:I = 0x20

.field public static final h:I = 0x21

.field public static final i:I = 0x22

.field public static j:Z


# instance fields
.field private A:Z

.field private B:Z

.field protected k:Landroid/widget/LinearLayout;

.field protected l:Landroid/widget/ImageView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/ImageView;

.field private q:I

.field private r:I

.field private s:Z

.field private t:I

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/mini/uielement/UITableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/android/mini/uielement/UITableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/16 v6, 0xb

    const/16 v5, 0xa

    const/high16 v4, 0x41e80000    # 29.0f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "mini_ui_table"

    invoke-static {v1}, Lj/i;->f(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 94
    const-string/jumbo v0, "tableView"

    invoke-static {v0}, Lj/i;->k(Ljava/lang/String;)[I

    move-result-object v0

    .line 96
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 99
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/mini/uielement/UITableView;->t:I

    .line 100
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/mini/uielement/UITableView;->B:Z

    .line 101
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/mini/uielement/UITableView;->w:Landroid/graphics/drawable/Drawable;

    .line 102
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alipay/android/mini/uielement/UITableView;->z:F

    .line 103
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alipay/android/mini/uielement/UITableView;->y:F

    .line 104
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/mini/uielement/UITableView;->A:Z

    .line 105
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/mini/uielement/UITableView;->u:Ljava/lang/String;

    .line 106
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/mini/uielement/UITableView;->v:Ljava/lang/String;

    .line 107
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/mini/uielement/UITableView;->x:Landroid/graphics/drawable/Drawable;

    .line 108
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/mini/uielement/UITableView;->s:Z

    .line 109
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/mini/uielement/UITableView;->r:I

    .line 110
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/mini/uielement/UITableView;->q:I

    .line 112
    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/UITableView;->f()V

    .line 113
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    return-void
.end method

.method private f()V
    .locals 5

    .prologue
    const/high16 v4, 0x40400000    # 3.0f

    .line 124
    const-string v0, "linearLayout1"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/uielement/UITableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->k:Landroid/widget/LinearLayout;

    .line 126
    const-string/jumbo v0, "table_left_text"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/uielement/UITableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->m:Landroid/widget/TextView;

    .line 128
    const-string/jumbo v0, "table_left_text_2"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/uielement/UITableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->n:Landroid/widget/TextView;

    .line 130
    const-string/jumbo v0, "table_iconView"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/uielement/UITableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->l:Landroid/widget/ImageView;

    .line 133
    const-string/jumbo v0, "table_right_image"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/uielement/UITableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->o:Landroid/widget/ImageView;

    .line 135
    const-string/jumbo v0, "table_arrow"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/uielement/UITableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->p:Landroid/widget/ImageView;

    .line 137
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->s:Z

    if-eqz v0, :cond_4

    .line 138
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->p:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    iget v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->t:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/uielement/UITableView;->a(I)V

    .line 144
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UITableView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "item_left_icon_large"

    invoke-static {v1}, Lj/i;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 146
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UITableView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "item_left_icon_small"

    invoke-static {v2}, Lj/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 149
    iget v2, p0, Lcom/alipay/android/mini/uielement/UITableView;->q:I

    iget v3, p0, Lcom/alipay/android/mini/uielement/UITableView;->r:I

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/mini/uielement/UITableView;->a(II)V

    .line 151
    iget-object v2, p0, Lcom/alipay/android/mini/uielement/UITableView;->u:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/alipay/android/mini/uielement/UITableView;->u:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/alipay/android/mini/uielement/UITableView;->a(Ljava/lang/String;)V

    .line 154
    :cond_0
    iget-object v2, p0, Lcom/alipay/android/mini/uielement/UITableView;->v:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 155
    iget-object v2, p0, Lcom/alipay/android/mini/uielement/UITableView;->v:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/alipay/android/mini/uielement/UITableView;->b(Ljava/lang/String;)V

    .line 158
    :cond_1
    iget-object v2, p0, Lcom/alipay/android/mini/uielement/UITableView;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 159
    iget-object v2, p0, Lcom/alipay/android/mini/uielement/UITableView;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/alipay/android/mini/uielement/UITableView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 162
    :cond_2
    iget-boolean v2, p0, Lcom/alipay/android/mini/uielement/UITableView;->A:Z

    if-eqz v2, :cond_5

    .line 163
    invoke-virtual {p0, v0, v0}, Lcom/alipay/android/mini/uielement/UITableView;->a(FF)V

    .line 168
    :goto_1
    iget v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->r:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_3

    .line 169
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UITableView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/alipay/android/mini/util/n;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UITableView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UITableView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/alipay/android/mini/util/n;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UITableView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/alipay/android/mini/uielement/UITableView;->setPadding(IIII)V

    .line 174
    :cond_3
    return-void

    .line 141
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->p:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 165
    :cond_5
    invoke-virtual {p0, v1, v1}, Lcom/alipay/android/mini/uielement/UITableView;->a(FF)V

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/alipay/android/mini/uielement/UITableView$a;)Landroid/view/View;
    .locals 1

    .prologue
    .line 358
    invoke-virtual {p1}, Lcom/alipay/android/mini/uielement/UITableView$a;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/uielement/UITableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->p:Landroid/widget/ImageView;

    return-object v0
.end method

.method public a(FF)V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 194
    float-to-int v1, p1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 195
    float-to-int v1, p2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 196
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 177
    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->p:Landroid/widget/ImageView;

    const-string/jumbo v1, "table_arrow"

    invoke-static {v1}, Lj/i;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    :goto_0
    return-void

    .line 179
    :cond_0
    const/16 v0, 0x22

    if-ne p1, v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->p:Landroid/widget/ImageView;

    const-string/jumbo v1, "table_arrow_up"

    invoke-static {v1}, Lj/i;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->p:Landroid/widget/ImageView;

    const-string/jumbo v1, "table_arrow_down"

    invoke-static {v1}, Lj/i;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 223
    iput p1, p0, Lcom/alipay/android/mini/uielement/UITableView;->q:I

    .line 224
    iput p2, p0, Lcom/alipay/android/mini/uielement/UITableView;->r:I

    .line 226
    const/16 v0, 0x11

    if-ne p2, v0, :cond_0

    .line 227
    packed-switch p1, :pswitch_data_0

    .line 236
    :pswitch_0
    const-string/jumbo v0, "table_item_bottom_normal_selector"

    invoke-static {v0}, Lj/i;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/uielement/UITableView;->setBackgroundResource(I)V

    .line 262
    :goto_0
    return-void

    .line 230
    :pswitch_1
    const-string/jumbo v0, "table_item_top_center_selector"

    invoke-static {v0}, Lj/i;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/uielement/UITableView;->setBackgroundResource(I)V

    goto :goto_0

    .line 241
    :cond_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 243
    :pswitch_2
    const-string/jumbo v0, "table_normal_selector"

    invoke-static {v0}, Lj/i;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/uielement/UITableView;->setBackgroundResource(I)V

    goto :goto_0

    .line 247
    :pswitch_3
    const-string/jumbo v0, "table_top_selector"

    invoke-static {v0}, Lj/i;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/uielement/UITableView;->setBackgroundResource(I)V

    goto :goto_0

    .line 251
    :pswitch_4
    const-string/jumbo v0, "table_bottom_selector"

    invoke-static {v0}, Lj/i;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/uielement/UITableView;->setBackgroundResource(I)V

    goto :goto_0

    .line 255
    :pswitch_5
    const-string/jumbo v0, "table_center_selector"

    invoke-static {v0}, Lj/i;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/uielement/UITableView;->setBackgroundResource(I)V

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 241
    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->l:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 303
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->l:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->m:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->r:I

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/mini/uielement/UITableView;->a(II)V

    .line 205
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->n:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->q:I

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/mini/uielement/UITableView;->a(II)V

    .line 214
    return-void
.end method

.method public d()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public d(I)V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->l:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 294
    return-void
.end method

.method public e()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->o:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public e(I)V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    return-void
.end method

.method public f(I)V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->o:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->o:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 319
    return-void
.end method

.method public g(I)V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 323
    iget v0, p0, Lcom/alipay/android/mini/uielement/UITableView;->t:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/uielement/UITableView;->a(I)V

    .line 324
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 119
    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/UITableView;->f()V

    .line 120
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 86
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_1
    return v0

    .line 72
    :pswitch_1
    sget-boolean v1, Lcom/alipay/android/mini/uielement/UITableView;->j:Z

    if-nez v1, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UITableView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UITableView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    sput-boolean v0, Lcom/alipay/android/mini/uielement/UITableView;->j:Z

    goto :goto_0

    .line 81
    :pswitch_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/mini/uielement/UITableView;->j:Z

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
