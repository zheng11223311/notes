.class public Lcom/alipay/android/mini/widget/YearMonthPicker;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/mini/widget/YearMonthPicker$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/widget/Button;

.field protected b:Landroid/widget/Button;

.field protected c:Landroid/widget/TextView;

.field protected d:Landroid/widget/TextView;

.field protected e:Landroid/widget/Button;

.field protected f:Landroid/widget/Button;

.field protected g:I

.field protected h:I

.field protected final i:I

.field protected j:Landroid/os/Handler;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 36
    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->i:I

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->j:Landroid/os/Handler;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->k:Z

    .line 41
    iput-boolean v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->l:Z

    .line 42
    iput-boolean v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->m:Z

    .line 43
    iput-boolean v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->n:Z

    .line 44
    iput-boolean v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->o:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->i:I

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->j:Landroid/os/Handler;

    .line 39
    iput-boolean v2, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->k:Z

    .line 41
    iput-boolean v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->l:Z

    .line 42
    iput-boolean v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->m:Z

    .line 43
    iput-boolean v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->n:Z

    .line 44
    iput-boolean v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->o:Z

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "mini_year_month_picker"

    invoke-static {v1}, Lj/i;->f(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/widget/YearMonthPicker;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->l:Z

    return v0
.end method

.method static synthetic a(Lcom/alipay/android/mini/widget/YearMonthPicker;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/alipay/android/mini/widget/YearMonthPicker;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->m:Z

    return v0
.end method

.method static synthetic b(Lcom/alipay/android/mini/widget/YearMonthPicker;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->o:Z

    return p1
.end method

.method private c(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 303
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 304
    const/16 v1, 0x9

    if-le p1, v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/android/mini/widget/YearMonthPicker;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->n:Z

    return v0
.end method

.method static synthetic c(Lcom/alipay/android/mini/widget/YearMonthPicker;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->l:Z

    return p1
.end method

.method static synthetic d(Lcom/alipay/android/mini/widget/YearMonthPicker;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->o:Z

    return v0
.end method

.method static synthetic d(Lcom/alipay/android/mini/widget/YearMonthPicker;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->m:Z

    return p1
.end method


# virtual methods
.method public a(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    if-nez p1, :cond_0

    .line 149
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 150
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    :cond_0
    return-object v0
.end method

.method protected a()V
    .locals 3

    .prologue
    .line 82
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 83
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->p:I

    .line 85
    iget v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->p:I

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x64

    .line 86
    const/4 v1, 0x0

    add-int/lit8 v2, v0, -0x64

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->h:I

    .line 87
    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->g:I

    .line 88
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->k:Z

    if-nez v0, :cond_0

    .line 115
    iget v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->p:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->h:I

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iput p1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->h:I

    goto :goto_0
.end method

.method public a(II)V
    .locals 2

    .prologue
    .line 127
    iget v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->g:I

    iget v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->h:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 128
    iget-object v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->c:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->d:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/alipay/android/mini/widget/YearMonthPicker;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    return-void
.end method

.method protected a(Landroid/widget/Button;ZZ)V
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcom/alipay/android/mini/widget/x;

    invoke-direct {v0, p0, p3, p2}, Lcom/alipay/android/mini/widget/x;-><init>(Lcom/alipay/android/mini/widget/YearMonthPicker;ZZ)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    new-instance v0, Lcom/alipay/android/mini/widget/y;

    invoke-direct {v0, p0, p2, p3}, Lcom/alipay/android/mini/widget/y;-><init>(Lcom/alipay/android/mini/widget/YearMonthPicker;ZZ)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 188
    new-instance v0, Lcom/alipay/android/mini/widget/z;

    invoke-direct {v0, p0}, Lcom/alipay/android/mini/widget/z;-><init>(Lcom/alipay/android/mini/widget/YearMonthPicker;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 201
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 91
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 93
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 94
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 96
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->a(II)V

    .line 97
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 122
    iput p1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->g:I

    .line 123
    return-void
.end method

.method protected b(Z)V
    .locals 0

    .prologue
    .line 209
    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->g()V

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->h()V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->k:Z

    .line 106
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 240
    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->i()V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->j()V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->k:Z

    .line 110
    iget v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->h:I

    iget v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->p:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->p:I

    :goto_0
    iput v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->h:I

    .line 111
    return-void

    .line 110
    :cond_0
    iget v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->h:I

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected g()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 218
    add-int/lit8 v0, v0, 0x1

    .line 219
    iget v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->g:I

    if-le v0, v1, :cond_0

    .line 220
    iget v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->h:I

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->c:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    return-void
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 227
    add-int/lit8 v0, v0, 0x1

    .line 228
    const/16 v1, 0xc

    if-le v0, v1, :cond_0

    .line 229
    const/4 v0, 0x1

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->d:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    return-void
.end method

.method protected i()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 249
    add-int/lit8 v0, v0, -0x1

    .line 250
    iget v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->h:I

    if-ge v0, v1, :cond_0

    .line 251
    iget v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->g:I

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->c:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    return-void
.end method

.method protected j()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 258
    add-int/lit8 v0, v0, -0x1

    .line 259
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 260
    const/16 v0, 0xc

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->d:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 59
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 61
    const-string/jumbo v0, "year_up_btn"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->a:Landroid/widget/Button;

    .line 62
    const-string/jumbo v0, "year_down_btn"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->b:Landroid/widget/Button;

    .line 63
    const-string/jumbo v0, "year_text"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->c:Landroid/widget/TextView;

    .line 65
    const-string v0, "month_up_btn"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->e:Landroid/widget/Button;

    .line 66
    const-string v0, "month_down_btn"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->f:Landroid/widget/Button;

    .line 67
    const-string v0, "month_text"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->d:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->a:Landroid/widget/Button;

    invoke-virtual {p0, v0, v2, v2}, Lcom/alipay/android/mini/widget/YearMonthPicker;->a(Landroid/widget/Button;ZZ)V

    .line 70
    iget-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->b:Landroid/widget/Button;

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/android/mini/widget/YearMonthPicker;->a(Landroid/widget/Button;ZZ)V

    .line 71
    iget-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->e:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/android/mini/widget/YearMonthPicker;->a(Landroid/widget/Button;ZZ)V

    .line 72
    iget-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->f:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1, v1}, Lcom/alipay/android/mini/widget/YearMonthPicker;->a(Landroid/widget/Button;ZZ)V

    .line 75
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->a()V

    .line 76
    return-void
.end method
