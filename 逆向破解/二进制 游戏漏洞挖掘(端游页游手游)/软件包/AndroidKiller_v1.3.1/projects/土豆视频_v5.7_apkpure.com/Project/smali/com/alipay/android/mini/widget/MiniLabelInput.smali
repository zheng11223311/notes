.class public Lcom/alipay/android/mini/widget/MiniLabelInput;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Lcom/alipay/android/mini/widget/CustomEditText;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Ljava/lang/String;

.field private f:Lcom/alipay/android/mini/widget/CustomEditText$c;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "mini_widget_label_input"

    invoke-static {v1}, Lj/i;->f(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    const-string v0, "labelInput"

    invoke-static {v0}, Lj/i;->k(Ljava/lang/String;)[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    const-string v1, "labelInput_labelName"

    invoke-static {v1}, Lj/i;->i(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->e:Ljava/lang/String;

    .line 52
    const-string v1, "labelInput_rightIcon"

    invoke-static {v1}, Lj/i;->i(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->d:Landroid/graphics/drawable/Drawable;

    .line 53
    const-string v1, "labelInput_miniInputHint"

    invoke-static {v1}, Lj/i;->i(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->g:Ljava/lang/String;

    .line 54
    const-string v1, "labelInput_isPassword"

    invoke-static {v1}, Lj/i;->i(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->h:Z

    .line 55
    const-string v1, "labelInput_maxInputLength"

    invoke-static {v1}, Lj/i;->i(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->i:I

    .line 56
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->onFinishInflate()V

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/widget/MiniLabelInput;)Lcom/alipay/android/mini/widget/CustomEditText;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/mini/widget/MiniLabelInput;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->h()V

    return-void
.end method

.method static synthetic c(Lcom/alipay/android/mini/widget/MiniLabelInput;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->i()V

    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 189
    const-string v1, "mini_icon_clean"

    invoke-static {v1}, Lj/i;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    new-instance v2, Lcom/alipay/android/mini/widget/n;

    invoke-direct {v2, p0}, Lcom/alipay/android/mini/widget/n;-><init>(Lcom/alipay/android/mini/widget/MiniLabelInput;)V

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/mini/widget/CustomEditText;->a(Landroid/graphics/drawable/Drawable;Lcom/alipay/android/mini/widget/CustomEditText$c;)V

    .line 196
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->b()V

    .line 200
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    iget-object v1, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->d:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->f:Lcom/alipay/android/mini/widget/CustomEditText$c;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/mini/widget/CustomEditText;->a(Landroid/graphics/drawable/Drawable;Lcom/alipay/android/mini/widget/CustomEditText$c;)V

    .line 203
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->d:Landroid/graphics/drawable/Drawable;

    .line 62
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/android/mini/widget/CustomEditText;->setInputType(I)V

    .line 219
    return-void
.end method

.method public a(Landroid/text/TextWatcher;)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/android/mini/widget/CustomEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 168
    return-void
.end method

.method public a(Lcom/alipay/android/mini/widget/CustomEditText$c;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->f:Lcom/alipay/android/mini/widget/CustomEditText$c;

    .line 163
    invoke-direct {p0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->i()V

    .line 164
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 151
    const-string v1, "mini_icon_clean"

    invoke-static {v1}, Lj/i;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    new-instance v2, Lcom/alipay/android/mini/widget/m;

    invoke-direct {v2, p0}, Lcom/alipay/android/mini/widget/m;-><init>(Lcom/alipay/android/mini/widget/MiniLabelInput;)V

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/mini/widget/CustomEditText;->b(Landroid/graphics/drawable/Drawable;Lcom/alipay/android/mini/widget/CustomEditText$c;)V

    .line 159
    return-void
.end method

.method public b(I)V
    .locals 4

    .prologue
    .line 226
    if-lez p1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 231
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/android/mini/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    .line 207
    return-void
.end method

.method public c()Lcom/alipay/android/mini/widget/CustomEditText;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/android/mini/widget/CustomEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 223
    return-void
.end method

.method public d()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 184
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setEnabled(Z)V

    .line 211
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setEnabled(Z)V

    .line 215
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 66
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->f:Lcom/alipay/android/mini/widget/CustomEditText$c;

    .line 68
    const-string v0, "mini_widget_label_input"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->a:Landroid/widget/LinearLayout;

    .line 69
    const-string v0, "mini_widget_label_input_label"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->c:Landroid/widget/TextView;

    .line 70
    const-string v0, "mini_widget_label_input_input"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/widget/CustomEditText;

    iput-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    .line 71
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 75
    invoke-direct {p0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->i()V

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    iget-object v1, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 80
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->h:Z

    if-eqz v0, :cond_3

    .line 81
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setInputType(I)V

    .line 83
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setInputType(I)V

    .line 86
    :cond_3
    iget v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->i:I

    if-lez v0, :cond_4

    .line 87
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget v4, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->i:I

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 91
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->a:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alipay/android/mini/widget/j;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/widget/j;-><init>(Lcom/alipay/android/mini/widget/MiniLabelInput;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/mini/widget/k;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/widget/k;-><init>(Lcom/alipay/android/mini/widget/MiniLabelInput;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 128
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/mini/widget/l;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/widget/l;-><init>(Lcom/alipay/android/mini/widget/MiniLabelInput;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 146
    return-void
.end method
