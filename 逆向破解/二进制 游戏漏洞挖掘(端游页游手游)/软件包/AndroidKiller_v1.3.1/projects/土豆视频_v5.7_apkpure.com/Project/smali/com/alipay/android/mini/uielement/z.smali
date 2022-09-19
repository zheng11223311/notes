.class public Lcom/alipay/android/mini/uielement/z;
.super Lcom/alipay/android/mini/uielement/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/mini/uielement/z$a;
    }
.end annotation


# instance fields
.field private e:Lcom/alipay/android/mini/widget/CustomEditText;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Ljava/lang/String;

.field private j:Lcom/alipay/android/mini/uielement/f;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z

.field private p:Lcom/alipay/android/mini/widget/c;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Landroid/app/Activity;

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Lcom/alipay/android/mini/util/c;

.field private x:Ls/b;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/c;-><init>()V

    .line 81
    iput-boolean v1, p0, Lcom/alipay/android/mini/uielement/z;->u:Z

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/z;->v:Ljava/lang/String;

    .line 89
    iput-boolean v1, p0, Lcom/alipay/android/mini/uielement/z;->n:Z

    .line 90
    iput-boolean v1, p0, Lcom/alipay/android/mini/uielement/z;->s:Z

    .line 91
    return-void
.end method

.method private K()V
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/z;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 554
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/z;->k()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 555
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/z;->s:Z

    if-eqz v0, :cond_1

    .line 557
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/z;->k()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 559
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v1, v0}, Lcom/alipay/android/mini/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 560
    :catch_0
    move-exception v0

    .line 561
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/z;->k()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private L()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 588
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 589
    const-string v0, "card_no"

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/z;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    const-string v0, "card_no"

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/z;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    new-instance v0, Lcom/alipay/android/mini/widget/c;

    invoke-direct {v0}, Lcom/alipay/android/mini/widget/c;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/z;->p:Lcom/alipay/android/mini/widget/c;

    .line 592
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->p:Lcom/alipay/android/mini/widget/c;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/mini/widget/c;->a(Landroid/widget/EditText;I)V

    .line 596
    :cond_0
    const-string v0, "cvv"

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/z;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 601
    :cond_1
    const-string v0, "mobile"

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/z;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 602
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 604
    new-instance v0, Lcom/alipay/android/mini/widget/g;

    invoke-direct {v0}, Lcom/alipay/android/mini/widget/g;-><init>()V

    .line 605
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/g;->a(Landroid/widget/EditText;)V

    .line 608
    :cond_2
    return-void
.end method

.method private M()V
    .locals 2

    .prologue
    .line 654
    instance-of v0, p0, Lcom/alipay/android/mini/uielement/at;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/mini/uielement/z$a;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/z$a;-><init>(Lcom/alipay/android/mini/uielement/z;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 686
    :goto_0
    return-void

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/mini/uielement/al;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/al;-><init>(Lcom/alipay/android/mini/uielement/z;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method private N()Ljava/lang/String;
    .locals 3

    .prologue
    .line 689
    instance-of v0, p0, Lcom/alipay/android/mini/uielement/at;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/EditTextPostProcessor;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 694
    :goto_0
    return-object v0

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 694
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/mini/uielement/z;)Lcom/alipay/android/mini/widget/CustomEditText;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/mini/uielement/z;Ls/b;)Ls/b;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/z;->x:Ls/b;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/mini/uielement/z;Lcom/alipay/android/mini/widget/CustomEditText;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/alipay/android/mini/uielement/z;->b(Lcom/alipay/android/mini/widget/CustomEditText;)V

    return-void
.end method

.method private a(Lcom/alipay/android/mini/widget/CustomEditText;)V
    .locals 3

    .prologue
    .line 719
    invoke-virtual {p1}, Lcom/alipay/android/mini/widget/CustomEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 720
    const/4 v1, -0x1

    const-string v2, "mini_icon_clean"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/mini/util/n;->a(IILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 722
    new-instance v1, Lcom/alipay/android/mini/uielement/ab;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/mini/uielement/ab;-><init>(Lcom/alipay/android/mini/uielement/z;Lcom/alipay/android/mini/widget/CustomEditText;)V

    invoke-virtual {p1, v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->a(Landroid/graphics/drawable/Drawable;Lcom/alipay/android/mini/widget/CustomEditText$c;)V

    .line 729
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->a(Z)V

    .line 730
    return-void
.end method

.method static synthetic b(Lcom/alipay/android/mini/uielement/z;)Lcom/alipay/android/mini/util/c;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->w:Lcom/alipay/android/mini/util/c;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/mini/uielement/z;Lcom/alipay/android/mini/widget/CustomEditText;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/alipay/android/mini/uielement/z;->a(Lcom/alipay/android/mini/widget/CustomEditText;)V

    return-void
.end method

.method private b(Lcom/alipay/android/mini/widget/CustomEditText;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 733
    invoke-virtual {p1}, Lcom/alipay/android/mini/widget/CustomEditText;->b()V

    .line 736
    invoke-virtual {p1}, Lcom/alipay/android/mini/widget/CustomEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 737
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 738
    iget-object v3, p0, Lcom/alipay/android/mini/uielement/z;->p:Lcom/alipay/android/mini/widget/c;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/android/mini/uielement/z;->m:Ljava/lang/String;

    const-string v4, "card_no"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 739
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.eg.android.AlipayGphone"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.eg.android.AlipayGphoneRC"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 743
    :cond_0
    new-instance v0, Lcom/alipay/android/mini/uielement/ac;

    invoke-direct {v0, p0}, Lcom/alipay/android/mini/uielement/ac;-><init>(Lcom/alipay/android/mini/uielement/z;)V

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 761
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 762
    new-instance v2, Lcom/alipay/android/mini/uielement/ad;

    invoke-direct {v2, p0, v1}, Lcom/alipay/android/mini/uielement/ad;-><init>(Lcom/alipay/android/mini/uielement/z;Lr/c;)V

    invoke-virtual {p1, v0, v2}, Lcom/alipay/android/mini/widget/CustomEditText;->a(Landroid/graphics/drawable/Drawable;Lcom/alipay/android/mini/widget/CustomEditText$c;)V

    .line 769
    :cond_1
    return-void

    .line 754
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->m:Ljava/lang/String;

    const-string v3, "cvv"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 755
    const/4 v0, -0x1

    const-string v1, "mini_page_card_safecode_info"

    invoke-static {v1}, Lj/i;->e(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/alipay/android/mini/util/n;->a(IILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 758
    new-instance v1, Lr/c;

    sget-object v2, Lr/a;->J:Lr/a;

    invoke-direct {v1, v2}, Lr/c;-><init>(Lr/a;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/android/mini/uielement/z;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->t:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/mini/uielement/z;)Ls/b;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->x:Ls/b;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/mini/uielement/z;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/mini/uielement/z;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->g:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected A()V
    .locals 4

    .prologue
    .line 369
    const-string v0, "card_no"

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/z;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cvv"

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/z;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-direct {p0, v0}, Lcom/alipay/android/mini/uielement/z;->b(Lcom/alipay/android/mini/widget/CustomEditText;)V

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->j:Lcom/alipay/android/mini/uielement/f;

    if-eqz v0, :cond_2

    .line 375
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->j:Lcom/alipay/android/mini/uielement/f;

    invoke-static {v0}, Lr/a;->a(Lcom/alipay/android/mini/uielement/f;)[Lr/a;

    move-result-object v1

    .line 376
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 377
    invoke-virtual {p0, p0, v3}, Lcom/alipay/android/mini/uielement/z;->a(Ljava/lang/Object;Lr/a;)V

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 380
    :cond_2
    return-void
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->r:Ljava/lang/String;

    return-object v0
.end method

.method public D()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    return-object v0
.end method

.method public I()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 535
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected J()V
    .locals 3

    .prologue
    const/16 v2, 0x1000

    .line 570
    instance-of v0, p0, Lcom/alipay/android/mini/uielement/at;

    if-eqz v0, :cond_1

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    const-string v0, "num"

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/z;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 575
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setInputType(I)V

    goto :goto_0

    .line 576
    :cond_2
    const-string v0, "en"

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/z;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 577
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, v2}, Lcom/alipay/android/mini/widget/CustomEditText;->setInputType(I)V

    goto :goto_0

    .line 578
    :cond_3
    const-string v0, "cert"

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/z;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 579
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, v2}, Lcom/alipay/android/mini/widget/CustomEditText;->setInputType(I)V

    goto :goto_0

    .line 580
    :cond_4
    const-string v0, "pinyin"

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/z;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 581
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    const/16 v1, 0xc0

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setInputType(I)V

    goto :goto_0

    .line 582
    :cond_5
    const-string v0, "email"

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/z;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setInputType(I)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 58
    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/mini/uielement/z;->a(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method protected a(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 126
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/z;->t:Landroid/app/Activity;

    .line 127
    const-string v0, "mini_input_layout"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/z;->f:Landroid/widget/LinearLayout;

    .line 130
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/z;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    :cond_0
    instance-of v0, p0, Lcom/alipay/android/mini/uielement/at;

    if-eqz v0, :cond_3

    .line 135
    const-string v0, "mini_input_et_password"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/widget/CustomPasswordEditText;

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    .line 137
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, v3}, Lcom/alipay/android/mini/widget/CustomEditText;->setVisibility(I)V

    .line 144
    :goto_0
    const-string v0, "mini_input_error_msg"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/z;->g:Landroid/widget/TextView;

    .line 146
    const-string v0, "mini_input_lable"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/z;->h:Landroid/widget/TextView;

    .line 148
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 149
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    :goto_1
    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/z;->K()V

    .line 159
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/z;->n:Z

    if-eqz v0, :cond_5

    .line 160
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, v3}, Lcom/alipay/android/mini/widget/CustomEditText;->setEnabled(Z)V

    .line 164
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 166
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/z;->a:Z

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/alipay/android/mini/util/n;->a(Landroid/app/Activity;)I

    move-result v0

    .line 169
    :goto_3
    iget-boolean v1, p0, Lcom/alipay/android/mini/uielement/z;->a:Z

    if-eqz v1, :cond_1

    .line 170
    invoke-static {p1}, Lcom/alipay/android/mini/util/n;->a(Landroid/app/Activity;)I

    move-result v2

    .line 171
    invoke-static {p1}, Lcom/alipay/android/mini/util/n;->b(Landroid/app/Activity;)I

    move-result v1

    .line 172
    if-le v2, v1, :cond_1

    move v0, v1

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/z;->i:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lcom/alipay/android/mini/util/n;->b(Ljava/lang/String;Landroid/app/Activity;I)I

    move-result v0

    .line 179
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 181
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/z;->w()Ljava/lang/String;

    move-result-object v0

    const-string v1, "card_validate"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 184
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, v3}, Lcom/alipay/android/mini/widget/CustomEditText;->setFocusable(Z)V

    .line 185
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, v3}, Lcom/alipay/android/mini/widget/CustomEditText;->setFocusable(Z)V

    .line 186
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, v3}, Lcom/alipay/android/mini/widget/CustomEditText;->setFocusableInTouchMode(Z)V

    .line 187
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, v3}, Lcom/alipay/android/mini/widget/CustomEditText;->setCursorVisible(Z)V

    .line 188
    new-instance v0, Lcom/alipay/android/mini/util/c;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/z;->t:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/z;->E()Lr/h;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/util/c;-><init>(Landroid/content/Context;Lcom/alipay/android/mini/widget/CustomEditText;Lr/h;)V

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/z;->w:Lcom/alipay/android/mini/util/c;

    .line 190
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/mini/uielement/aa;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/aa;-><init>(Lcom/alipay/android/mini/uielement/z;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    :goto_4
    return-void

    .line 140
    :cond_3
    const-string v0, "mini_input_et"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/widget/CustomEditText;

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    .line 142
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, v3}, Lcom/alipay/android/mini/widget/CustomEditText;->setVisibility(I)V

    goto/16 :goto_0

    .line 151
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/z;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 162
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, v2}, Lcom/alipay/android/mini/widget/CustomEditText;->setEnabled(Z)V

    goto/16 :goto_2

    .line 166
    :cond_6
    invoke-static {p1}, Lcom/alipay/android/mini/util/n;->e(Landroid/app/Activity;)I

    move-result v0

    goto/16 :goto_3

    .line 200
    :cond_7
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/z;->J()V

    .line 202
    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/z;->L()V

    .line 204
    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/z;->M()V

    .line 206
    instance-of v0, p0, Lcom/alipay/android/mini/uielement/at;

    if-eqz v0, :cond_8

    .line 207
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_9

    .line 209
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, v3}, Lcom/alipay/android/mini/widget/CustomEditText;->setInputType(I)V

    .line 210
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/z;->a:Z

    if-nez v0, :cond_8

    .line 211
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, v3}, Lcom/alipay/android/mini/widget/CustomEditText;->setFocusable(Z)V

    .line 248
    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/mini/uielement/ae;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/ae;-><init>(Lcom/alipay/android/mini/uielement/z;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->a(Lcom/alipay/android/mini/widget/CustomEditText$b;)V

    .line 257
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/mini/uielement/af;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/mini/uielement/af;-><init>(Lcom/alipay/android/mini/uielement/z;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/mini/uielement/ag;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/mini/uielement/ag;-><init>(Lcom/alipay/android/mini/uielement/z;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->a(Lcom/alipay/android/mini/widget/CustomEditText$a;)V

    .line 312
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/mini/uielement/ah;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/ah;-><init>(Lcom/alipay/android/mini/uielement/z;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_4

    .line 225
    :cond_9
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->t:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 229
    :try_start_0
    const-class v0, Landroid/widget/EditText;

    .line 230
    const-string/jumbo v1, "setShowSoftInputOnFocus"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 232
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 233
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 238
    :goto_6
    :try_start_1
    const-class v0, Landroid/widget/EditText;

    .line 239
    const-string/jumbo v1, "setSoftInputShownOnFocus"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 241
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 242
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 243
    :catch_0
    move-exception v0

    goto :goto_5

    .line 234
    :catch_1
    move-exception v0

    goto :goto_6
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    if-nez v0, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/mini/uielement/ak;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/mini/uielement/ak;-><init>(Lcom/alipay/android/mini/uielement/z;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 703
    iput-boolean p2, p0, Lcom/alipay/android/mini/uielement/z;->u:Z

    .line 704
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/z;->u:Z

    if-eqz v0, :cond_0

    .line 705
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/z;->v:Ljava/lang/String;

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    if-eqz v0, :cond_1

    .line 708
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/mini/uielement/am;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/mini/uielement/am;-><init>(Lcom/alipay/android/mini/uielement/z;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->post(Ljava/lang/Runnable;)Z

    .line 716
    :cond_1
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/alipay/android/mini/uielement/c;->a(Lorg/json/JSONObject;)V

    .line 96
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/z;->i:Ljava/lang/String;

    .line 97
    const-string v0, "onload"

    invoke-static {p1, v0}, Lcom/alipay/android/mini/uielement/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/mini/uielement/f;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/z;->j:Lcom/alipay/android/mini/uielement/f;

    .line 98
    const-string v0, "label"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/z;->k:Ljava/lang/String;

    .line 99
    const-string v0, "keyboard"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/z;->l:Ljava/lang/String;

    .line 100
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/z;->m:Ljava/lang/String;

    .line 101
    const-string v0, "disable"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/z;->n:Z

    .line 102
    const-string v0, "format"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/z;->q:Ljava/lang/String;

    .line 103
    const-string v0, "encoded"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/z;->s:Z

    .line 104
    const-string v0, "format_msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/z;->r:Ljava/lang/String;

    .line 105
    const-string v0, "must"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/z;->o:Z

    .line 107
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 330
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/mini/uielement/aj;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/aj;-><init>(Lcom/alipay/android/mini/uielement/z;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/mini/widget/CustomEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 355
    :cond_0
    return-void
.end method

.method public c(I)I
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    if-eqz v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 541
    if-lt v0, p1, :cond_0

    move p1, v0

    .line 549
    :goto_0
    return p1

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_0

    .line 547
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 360
    instance-of v0, p0, Lcom/alipay/android/mini/uielement/at;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/EditTextPostProcessor;->clear(I)V

    .line 365
    :cond_0
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    .line 117
    invoke-static {v0}, Lcom/alipay/android/mini/uielement/g;->a(Landroid/view/View;)V

    .line 118
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x1

    .line 384
    iget-boolean v1, p0, Lcom/alipay/android/mini/uielement/z;->o:Z

    if-nez v1, :cond_0

    .line 395
    :goto_0
    return v0

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/z;->m()Z

    move-result v1

    if-nez v1, :cond_2

    .line 388
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/z;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 391
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v1}, Lcom/alipay/android/mini/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 392
    const/4 v0, 0x0

    goto :goto_0

    .line 394
    :cond_3
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/z;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public g()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 401
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/z;->o:Z

    if-nez v0, :cond_1

    .line 455
    :cond_0
    :goto_0
    return v1

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/z;->f()Z

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    .line 405
    goto :goto_0

    .line 407
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/z;->k()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/z;->N()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/z;->k()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/z;->E()Lr/h;

    move-result-object v0

    .line 413
    instance-of v3, v0, Lcom/alipay/android/mini/window/sdk/k;

    if-eqz v3, :cond_7

    .line 414
    check-cast v0, Lcom/alipay/android/mini/window/sdk/k;

    const-string v3, "certtype"

    invoke-virtual {v0, v3}, Lcom/alipay/android/mini/window/sdk/k;->c(Ljava/lang/String;)Lcom/alipay/android/mini/uielement/c;

    move-result-object v0

    .line 416
    if-eqz v0, :cond_7

    .line 417
    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/c;->k()Ljava/lang/Object;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "A"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 424
    :goto_1
    iget-object v2, p0, Lcom/alipay/android/mini/uielement/z;->q:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->q:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 427
    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/z;->N()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    .line 428
    if-nez v2, :cond_5

    .line 429
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->h:Landroid/widget/TextView;

    const/high16 v3, -0x10000

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 430
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 431
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 432
    const-string v3, "mini_format_error"

    invoke-static {v3}, Lj/i;->g(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 434
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/z;->s()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/z;->r:Ljava/lang/String;

    .line 438
    :cond_4
    instance-of v0, p0, Lcom/alipay/android/mini/uielement/at;

    if-eqz v0, :cond_6

    .line 439
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->x:Ls/b;

    invoke-virtual {v0}, Ls/b;->d()V

    .line 445
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->t:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/android/mini/uielement/z;->r:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/alipay/android/mini/widget/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    move v1, v2

    .line 450
    goto/16 :goto_0

    .line 442
    :cond_6
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-static {v0}, Lcom/alipay/android/mini/util/n;->b(Landroid/widget/EditText;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 451
    :catch_0
    move-exception v0

    .line 452
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_1
.end method

.method public h()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/z;->x()Lorg/json/JSONObject;

    move-result-object v0

    .line 462
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/z;->N()Ljava/lang/String;

    move-result-object v1

    .line 464
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/z;->k()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/z;->k()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-object v0

    .line 469
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/z;->w()Ljava/lang/String;

    move-result-object v2

    const-string v3, "card_validate"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 471
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/z;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/mini/uielement/z;->w:Lcom/alipay/android/mini/util/c;

    invoke-virtual {v3}, Lcom/alipay/android/mini/util/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 475
    :goto_1
    iget-boolean v2, p0, Lcom/alipay/android/mini/uielement/z;->u:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/z;->v:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 476
    const-string v1, "local"

    const-string v2, "Y"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 478
    :cond_2
    instance-of v1, p0, Lcom/alipay/android/mini/uielement/at;

    if-eqz v1, :cond_0

    .line 480
    const-string v1, "encryptType"

    const-string v2, "RSA"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 481
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v1}, Lcom/alipay/android/mini/widget/CustomEditText;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/alipay/android/mini/util/EditTextPostProcessor;->clear(I)V

    .line 482
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/z;->x:Ls/b;

    invoke-virtual {v1}, Ls/b;->d()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 485
    :catch_0
    move-exception v1

    .line 486
    invoke-static {v1}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 473
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/z;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 511
    invoke-super {p0}, Lcom/alipay/android/mini/uielement/c;->i()V

    .line 512
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-static {v0}, Lcom/alipay/android/mini/util/n;->b(Landroid/widget/EditText;)V

    .line 514
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, v2}, Lcom/alipay/android/mini/widget/CustomEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 516
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, v2}, Lcom/alipay/android/mini/widget/CustomEditText;->a(Lcom/alipay/android/mini/widget/CustomEditText$a;)V

    .line 517
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->a()V

    .line 518
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 520
    :cond_0
    iput-object v2, p0, Lcom/alipay/android/mini/uielement/z;->p:Lcom/alipay/android/mini/widget/c;

    .line 521
    iput-object v2, p0, Lcom/alipay/android/mini/uielement/z;->e:Lcom/alipay/android/mini/widget/CustomEditText;

    .line 522
    iput-object v2, p0, Lcom/alipay/android/mini/uielement/z;->k:Ljava/lang/String;

    .line 523
    iput-object v2, p0, Lcom/alipay/android/mini/uielement/z;->j:Lcom/alipay/android/mini/uielement/f;

    .line 524
    iput-object v2, p0, Lcom/alipay/android/mini/uielement/z;->t:Landroid/app/Activity;

    .line 526
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->x:Ls/b;

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z;->x:Ls/b;

    invoke-virtual {v0}, Ls/b;->d()V

    .line 529
    :cond_1
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 111
    const-string v0, "mini_ui_lable_input"

    invoke-static {v0}, Lj/i;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
