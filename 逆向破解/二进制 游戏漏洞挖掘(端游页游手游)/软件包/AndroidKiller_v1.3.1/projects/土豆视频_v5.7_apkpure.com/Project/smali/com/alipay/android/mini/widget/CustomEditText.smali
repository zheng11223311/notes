.class public Lcom/alipay/android/mini/widget/CustomEditText;
.super Landroid/widget/EditText;
.source "SourceFile"

# interfaces
.implements Lh/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/mini/widget/CustomEditText$b;,
        Lcom/alipay/android/mini/widget/CustomEditText$c;,
        Lcom/alipay/android/mini/widget/CustomEditText$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Lcom/alipay/android/mini/widget/CustomEditText$c;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/widget/PopupWindow;

.field private k:Lcom/alipay/android/mini/widget/CustomEditText$b;

.field private l:Lcom/alipay/android/mini/widget/CustomEditText$a;

.field private m:Landroid/view/View$OnTouchListener;

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 27
    iput-boolean v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->a:Z

    .line 30
    iput v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->d:I

    .line 31
    iput v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->e:I

    .line 32
    iput v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->f:I

    .line 33
    iput v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->g:I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->m:Landroid/view/View$OnTouchListener;

    .line 40
    iput-boolean v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->n:Z

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-boolean v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->a:Z

    .line 30
    iput v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->d:I

    .line 31
    iput v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->e:I

    .line 32
    iput v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->f:I

    .line 33
    iput v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->g:I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->m:Landroid/view/View$OnTouchListener;

    .line 40
    iput-boolean v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->n:Z

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    iput-boolean v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->a:Z

    .line 30
    iput v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->d:I

    .line 31
    iput v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->e:I

    .line 32
    iput v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->f:I

    .line 33
    iput v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->g:I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->m:Landroid/view/View$OnTouchListener;

    .line 40
    iput-boolean v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->n:Z

    .line 72
    return-void
.end method

.method private a(ZLcom/alipay/android/mini/widget/CustomEditText;)V
    .locals 1

    .prologue
    .line 55
    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/alipay/android/mini/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 56
    invoke-virtual {p2}, Lcom/alipay/android/mini/widget/CustomEditText;->c()V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-virtual {p2}, Lcom/alipay/android/mini/widget/CustomEditText;->b()V

    goto :goto_0
.end method

.method private d()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 231
    iget-boolean v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->a:Z

    if-nez v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/CustomEditText;->i()V

    .line 248
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->a:Z

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/CustomEditText;->getWidth()I

    move-result v0

    .line 237
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/CustomEditText;->getHeight()I

    move-result v1

    .line 238
    iget-object v2, p0, Lcom/alipay/android/mini/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 239
    iget-object v3, p0, Lcom/alipay/android/mini/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 240
    sub-int/2addr v0, v2

    div-int/lit8 v4, v2, 0x4

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->d:I

    .line 241
    sub-int v0, v1, v3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->e:I

    .line 242
    iget v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->d:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->f:I

    .line 243
    iget v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->e:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->g:I

    .line 244
    iget-object v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5, v5, v0, v5}, Lcom/alipay/android/mini/widget/CustomEditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {p0, v5, v5, v5, v5}, Lcom/alipay/android/mini/widget/CustomEditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->j:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->j:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->j:Landroid/widget/PopupWindow;

    .line 204
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/CustomEditText;->b()V

    .line 206
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Lcom/alipay/android/mini/widget/CustomEditText$c;)V
    .locals 1

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/CustomEditText;->i()V

    .line 138
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->a:Z

    .line 139
    iput-object p2, p0, Lcom/alipay/android/mini/widget/CustomEditText;->c:Lcom/alipay/android/mini/widget/CustomEditText$c;

    .line 140
    iput-object p1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    .line 141
    invoke-direct {p0}, Lcom/alipay/android/mini/widget/CustomEditText;->d()V

    .line 142
    invoke-super {p0}, Landroid/widget/EditText;->invalidate()V

    .line 143
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    const/4 v0, 0x0

    .line 164
    iget-object v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->j:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 165
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/CustomEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->j:Landroid/widget/PopupWindow;

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->j:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 168
    iget-object v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->j:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 169
    iget-object v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->j:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 170
    iget-object v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->j:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 171
    iget-object v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->j:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->j:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 173
    const-string v1, "msp_popup_inline_error_right"

    invoke-static {v1}, Lj/i;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 176
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 178
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 180
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 182
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/CustomEditText;->getWidth()I

    move-result v1

    sub-int/2addr v1, v2

    .line 183
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/CustomEditText;->getPaddingBottom()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    rsub-int/lit8 v3, v3, 0x0

    .line 184
    if-gez v1, :cond_2

    .line 187
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/CustomEditText;->getWidth()I

    move-result v1

    if-le v2, v1, :cond_1

    .line 188
    const-string v1, "msp_popup_inline_error_left"

    invoke-static {v1}, Lj/i;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->j:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0, v0, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 192
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/CustomEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 193
    const/4 v1, -0x1

    const-string v2, "msp_edit_warning"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/mini/util/n;->a(IILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    .line 195
    iput-boolean v4, p0, Lcom/alipay/android/mini/widget/CustomEditText;->a:Z

    .line 196
    invoke-direct {p0}, Lcom/alipay/android/mini/widget/CustomEditText;->d()V

    .line 198
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public a(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 47
    check-cast p1, Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-direct {p0, p2, p1}, Lcom/alipay/android/mini/widget/CustomEditText;->a(ZLcom/alipay/android/mini/widget/CustomEditText;)V

    .line 48
    iget-object v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->l:Lcom/alipay/android/mini/widget/CustomEditText$a;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->l:Lcom/alipay/android/mini/widget/CustomEditText$a;

    invoke-interface {v0, p0, p2}, Lcom/alipay/android/mini/widget/CustomEditText$a;->a(Landroid/view/View;Z)V

    .line 52
    :cond_0
    return-void
.end method

.method public a(Lcom/alipay/android/mini/widget/CustomEditText$a;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->l:Lcom/alipay/android/mini/widget/CustomEditText$a;

    .line 87
    return-void
.end method

.method public a(Lcom/alipay/android/mini/widget/CustomEditText$b;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->k:Lcom/alipay/android/mini/widget/CustomEditText$b;

    .line 131
    return-void
.end method

.method public a(Lcom/alipay/android/mini/widget/CustomEditText$c;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->c:Lcom/alipay/android/mini/widget/CustomEditText$c;

    .line 161
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->n:Z

    .line 147
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 209
    iget-boolean v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->n:Z

    if-nez v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-super {p0, v1, v1, v1, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 213
    iput-boolean v2, p0, Lcom/alipay/android/mini/widget/CustomEditText;->n:Z

    .line 214
    iput-boolean v2, p0, Lcom/alipay/android/mini/widget/CustomEditText;->a:Z

    goto :goto_0
.end method

.method public b(Landroid/graphics/drawable/Drawable;Lcom/alipay/android/mini/widget/CustomEditText$c;)V
    .locals 1

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/CustomEditText;->i()V

    .line 154
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->a:Z

    .line 155
    iput-object p2, p0, Lcom/alipay/android/mini/widget/CustomEditText;->c:Lcom/alipay/android/mini/widget/CustomEditText$c;

    .line 156
    iput-object p1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    .line 157
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 218
    iget-boolean v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->n:Z

    if-eqz v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 221
    :cond_0
    iput-boolean v3, p0, Lcom/alipay/android/mini/widget/CustomEditText;->n:Z

    .line 222
    iget-object v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 223
    const/4 v0, -0x1

    const-string v1, "mini_icon_clean"

    invoke-static {v1}, Lj/i;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/CustomEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/android/mini/util/n;->a(IILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    .line 226
    :cond_1
    iput-boolean v3, p0, Lcom/alipay/android/mini/widget/CustomEditText;->a:Z

    .line 227
    invoke-direct {p0}, Lcom/alipay/android/mini/widget/CustomEditText;->d()V

    goto :goto_0
.end method

.method public i()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/CustomEditText;->a()V

    .line 253
    iput-object v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->a:Z

    .line 255
    iput-object v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->c:Lcom/alipay/android/mini/widget/CustomEditText$c;

    .line 256
    return-void
.end method

.method public onEditorAction(I)V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/widget/EditText;->onEditorAction(I)V

    .line 92
    iget-object v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->k:Lcom/alipay/android/mini/widget/CustomEditText$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    if-ne v0, p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->k:Lcom/alipay/android/mini/widget/CustomEditText$b;

    invoke-interface {v0}, Lcom/alipay/android/mini/widget/CustomEditText$b;->a()V

    .line 95
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 123
    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/CustomEditText;->a()V

    .line 126
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    .line 127
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onMeasure(II)V

    .line 77
    iget v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->h:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/alipay/android/mini/widget/CustomEditText;->i:I

    if-eq v0, p2, :cond_1

    .line 78
    :cond_0
    iput p1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->h:I

    .line 79
    iput p2, p0, Lcom/alipay/android/mini/widget/CustomEditText;->i:I

    .line 80
    invoke-direct {p0}, Lcom/alipay/android/mini/widget/CustomEditText;->d()V

    .line 82
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 103
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/CustomEditText;->a()V

    .line 104
    iget v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->d:I

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->a:Z

    if-eqz v1, :cond_1

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 107
    iget v3, p0, Lcom/alipay/android/mini/widget/CustomEditText;->d:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_1

    iget v3, p0, Lcom/alipay/android/mini/widget/CustomEditText;->f:I

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->e:I

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->g:I

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->c:Lcom/alipay/android/mini/widget/CustomEditText$c;

    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 110
    iget-object v1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->c:Lcom/alipay/android/mini/widget/CustomEditText$c;

    iget-object v2, p0, Lcom/alipay/android/mini/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-interface {v1, v2}, Lcom/alipay/android/mini/widget/CustomEditText$c;->a(Landroid/graphics/drawable/Drawable;)V

    .line 118
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/alipay/android/mini/widget/CustomEditText;->m:Landroid/view/View$OnTouchListener;

    .line 99
    return-void
.end method
