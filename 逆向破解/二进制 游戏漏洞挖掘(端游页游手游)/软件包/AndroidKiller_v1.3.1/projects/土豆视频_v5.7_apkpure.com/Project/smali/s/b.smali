.class public Ls/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final A:I = 0x12c

.field private static final B:I = 0xc8

.field private static final D:I = 0x0

.field private static final E:I = 0x1

.field private static final F:I = 0x2

.field private static final G:I = 0x3

.field private static t:Ls/b; = null

.field private static final u:I = 0x0

.field private static final v:I = 0x3e9

.field private static final w:I = 0x3ea

.field private static final x:I = 0x3eb

.field private static final y:I = 0x3ec

.field private static final z:I = 0xc8


# instance fields
.field private C:I

.field private H:Landroid/widget/TextView;

.field private I:Z

.field private J:[I

.field private K:Landroid/view/View;

.field private L:Z

.field private M:I

.field private N:I

.field private O:I

.field private a:Landroid/widget/PopupWindow;

.field private b:Landroid/os/Handler;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/content/Context;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Z


# direct methods
.method private constructor <init>(Landroid/widget/EditText;Landroid/content/Context;Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput v0, p0, Ls/b;->C:I

    .line 83
    iput-boolean v0, p0, Ls/b;->I:Z

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Ls/b;->J:[I

    .line 111
    invoke-virtual {p3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    .line 113
    const v1, 0x1020002

    invoke-virtual {p3, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Ls/b;->K:Landroid/view/View;

    .line 114
    invoke-virtual {p3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Ls/b;->N:I

    .line 117
    invoke-direct {p0, p1, p2, p3}, Ls/b;->c(Landroid/widget/EditText;Landroid/content/Context;Landroid/app/Activity;)V

    .line 119
    iget v1, p0, Ls/b;->N:I

    const/16 v2, 0x320

    if-le v1, v2, :cond_0

    .line 120
    iget v1, p0, Ls/b;->N:I

    sub-int v0, v1, v0

    iput v0, p0, Ls/b;->M:I

    .line 125
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v1, p0, Ls/b;->o:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    shr-int/lit8 v1, v1, 0x1

    .line 123
    iget v2, p0, Ls/b;->N:I

    sub-int v0, v2, v0

    sub-int/2addr v0, v1

    iput v0, p0, Ls/b;->M:I

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/widget/EditText;Landroid/content/Context;Landroid/app/Activity;)Ls/b;
    .locals 2

    .prologue
    .line 95
    const-class v1, Ls/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ls/b;->t:Ls/b;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ls/b;

    invoke-direct {v0, p0, p1, p2}, Ls/b;-><init>(Landroid/widget/EditText;Landroid/content/Context;Landroid/app/Activity;)V

    sput-object v0, Ls/b;->t:Ls/b;

    .line 98
    :cond_0
    sget-object v0, Ls/b;->t:Ls/b;

    invoke-direct {v0, p0, p1, p2}, Ls/b;->b(Landroid/widget/EditText;Landroid/content/Context;Landroid/app/Activity;)V

    .line 99
    sget-object v0, Ls/b;->t:Ls/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/widget/EditText;)V
    .locals 1

    .prologue
    .line 627
    new-instance v0, Ls/c;

    invoke-direct {v0, p0}, Ls/c;-><init>(Ls/b;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 684
    new-instance v0, Ls/d;

    invoke-direct {v0, p0}, Ls/d;-><init>(Ls/b;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 697
    return-void
.end method

.method private a(Landroid/widget/EditText;I)V
    .locals 2

    .prologue
    .line 440
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 441
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 442
    if-ltz p2, :cond_0

    if-le p2, v1, :cond_1

    .line 443
    :cond_0
    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 446
    :goto_0
    return-void

    .line 445
    :cond_1
    invoke-static {v0, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 530
    iget-object v0, p0, Ls/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 532
    iget-object v0, p0, Ls/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 533
    if-eqz v0, :cond_0

    if-ltz p2, :cond_0

    .line 537
    iget-object v0, p0, Ls/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 539
    iget-object v0, p0, Ls/b;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    invoke-direct {p0, v0, v1}, Ls/b;->a(Landroid/widget/EditText;I)V

    .line 550
    :goto_0
    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Ls/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 543
    iget-object v0, p0, Ls/b;->c:Landroid/widget/EditText;

    invoke-direct {p0, v0, v1}, Ls/b;->a(Landroid/widget/EditText;I)V

    goto :goto_0

    .line 547
    :cond_1
    iget-object v0, p0, Ls/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 548
    iget-object v0, p0, Ls/b;->c:Landroid/widget/EditText;

    invoke-direct {p0, v0, v1}, Ls/b;->a(Landroid/widget/EditText;I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I[I)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 455
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 457
    iget v0, p0, Ls/b;->C:I

    if-nez v0, :cond_1

    .line 458
    iget-object v0, p0, Ls/b;->e:Landroid/widget/TextView;

    iput-object v0, p0, Ls/b;->d:Landroid/widget/TextView;

    .line 468
    :cond_0
    :goto_0
    const-string v0, "key_abc1"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    if-ne p2, v0, :cond_4

    .line 469
    iget-object v0, p0, Ls/b;->d:Landroid/widget/TextView;

    iget-object v2, p0, Ls/b;->p:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "button_abc1_on"

    invoke-static {v3}, Lj/i;->e(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 488
    :goto_1
    iget-object v0, p0, Ls/b;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 495
    const/4 v2, 0x5

    invoke-virtual {v0, v2, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 496
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 497
    const/16 v2, 0xa

    invoke-virtual {v0, v2, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 499
    aget v2, p3, v7

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 507
    iget-object v2, p0, Ls/b;->d:Landroid/widget/TextView;

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v5, p0, Ls/b;->d:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    iget v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget-object v6, p0, Ls/b;->d:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v6

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 513
    iget-object v0, p0, Ls/b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v8, :cond_9

    .line 515
    iget-object v0, p0, Ls/b;->d:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 519
    :goto_2
    iget-object v0, p0, Ls/b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 520
    return-void

    .line 459
    :cond_1
    iget v0, p0, Ls/b;->C:I

    if-ne v0, v8, :cond_2

    .line 460
    iget-object v0, p0, Ls/b;->f:Landroid/widget/TextView;

    iput-object v0, p0, Ls/b;->d:Landroid/widget/TextView;

    goto :goto_0

    .line 461
    :cond_2
    iget v0, p0, Ls/b;->C:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 462
    iget-object v0, p0, Ls/b;->g:Landroid/widget/TextView;

    iput-object v0, p0, Ls/b;->d:Landroid/widget/TextView;

    goto :goto_0

    .line 463
    :cond_3
    iget v0, p0, Ls/b;->C:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 464
    iget-object v0, p0, Ls/b;->h:Landroid/widget/TextView;

    iput-object v0, p0, Ls/b;->d:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 471
    :cond_4
    const-string v0, "key_ABC"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    if-ne p2, v0, :cond_5

    .line 472
    iget-object v0, p0, Ls/b;->d:Landroid/widget/TextView;

    iget-object v2, p0, Ls/b;->p:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "button_abc_on"

    invoke-static {v3}, Lj/i;->e(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 474
    :cond_5
    const-string v0, "key_del1"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    if-eq p2, v0, :cond_6

    const-string v0, "key_del2"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    if-eq p2, v0, :cond_6

    const-string v0, "key_del3"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    if-eq p2, v0, :cond_6

    const-string v0, "key_del4"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    if-ne p2, v0, :cond_7

    .line 478
    :cond_6
    iget-object v0, p0, Ls/b;->d:Landroid/widget/TextView;

    iget-object v2, p0, Ls/b;->p:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "button_del_on"

    invoke-static {v3}, Lj/i;->e(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 480
    :cond_7
    const-string v0, "key_space"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    if-ne p2, v0, :cond_8

    .line 481
    iget-object v0, p0, Ls/b;->d:Landroid/widget/TextView;

    iget-object v2, p0, Ls/b;->p:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "button_space_on"

    invoke-static {v3}, Lj/i;->e(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 483
    iget-object v0, p0, Ls/b;->d:Landroid/widget/TextView;

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_1

    .line 485
    :cond_8
    iget-object v0, p0, Ls/b;->d:Landroid/widget/TextView;

    iget-object v2, p0, Ls/b;->p:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "button_show"

    invoke-static {v3}, Lj/i;->e(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 517
    :cond_9
    iget-object v0, p0, Ls/b;->d:Landroid/widget/TextView;

    const/high16 v1, 0x420c0000    # 35.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_2
.end method

.method static synthetic a(Ls/b;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Ls/b;->s:Z

    return v0
.end method

.method static synthetic b(Ls/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Ls/b;->p:Landroid/content/Context;

    return-object v0
.end method

.method private b(I)V
    .locals 5

    .prologue
    .line 423
    iget-object v0, p0, Ls/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 424
    iget-object v0, p0, Ls/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    if-lez p1, :cond_0

    .line 426
    iget-object v1, p0, Ls/b;->c:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v0, p0, Ls/b;->c:Landroid/widget/EditText;

    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v0, v1}, Ls/b;->a(Landroid/widget/EditText;I)V

    .line 431
    :cond_0
    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 705
    const-string v0, "key0"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 706
    const-string v0, "key1"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 707
    const-string v0, "key2"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 708
    const-string v0, "key3"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 709
    const-string v0, "key4"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 710
    const-string v0, "key5"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 711
    const-string v0, "key6"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 712
    const-string v0, "key7"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 713
    const-string v0, "key8"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 714
    const-string v0, "key9"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 716
    const-string v0, "key_a"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 717
    const-string v0, "key_b"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 718
    const-string v0, "key_c"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 719
    const-string v0, "key_d"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 720
    const-string v0, "key_e"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 721
    const-string v0, "key_f"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 722
    const-string v0, "key_g"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 723
    const-string v0, "key_h"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 724
    const-string v0, "key_i"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 725
    const-string v0, "key_j"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 726
    const-string v0, "key_k"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 727
    const-string v0, "key_l"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 728
    const-string v0, "key_m"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 729
    const-string v0, "key_n"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 730
    const-string v0, "key_o"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 731
    const-string v0, "key_p"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 732
    const-string v0, "key_q"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 733
    const-string v0, "key_r"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 734
    const-string v0, "key_s"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 735
    const-string v0, "key_t"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 736
    const-string v0, "key_u"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 737
    const-string v0, "key_v"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 738
    const-string v0, "key_w"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 739
    const-string v0, "key_x"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 740
    const-string v0, "key_y"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 741
    const-string v0, "key_z"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 743
    const-string v0, "key_A"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 744
    const-string v0, "key_B"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 745
    const-string v0, "key_C"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 746
    const-string v0, "key_D"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 747
    const-string v0, "key_E"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 748
    const-string v0, "key_F"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 749
    const-string v0, "key_G"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 750
    const-string v0, "key_H"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 751
    const-string v0, "key_I"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 752
    const-string v0, "key_J"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 753
    const-string v0, "key_K"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 754
    const-string v0, "key_L"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 755
    const-string v0, "key_M"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 756
    const-string v0, "key_N"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 757
    const-string v0, "key_O"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 758
    const-string v0, "key_P"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 759
    const-string v0, "key_Q"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 760
    const-string v0, "key_R"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 761
    const-string v0, "key_S"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 762
    const-string v0, "key_T"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 763
    const-string v0, "key_U"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 764
    const-string v0, "key_V"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 765
    const-string v0, "key_W"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 766
    const-string v0, "key_X"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 767
    const-string v0, "key_Y"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 768
    const-string v0, "key_Z"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 770
    const-string v0, "key_del1"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 771
    const-string v0, "key_del2"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 772
    const-string v0, "key_del3"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 773
    const-string v0, "key_del4"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 775
    const-string v0, "key_abc1"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 776
    const-string v0, "key_abc2"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 778
    const-string v0, "key_ABC"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 779
    const-string v0, "key_123"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 781
    const-string v0, "key_symbol_more"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 783
    const-string v0, "key_symbol_more2"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 786
    const-string v0, "key_enter"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 789
    const-string v0, "key_symbol_1"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 791
    const-string v0, "key_symbol_2"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 793
    const-string v0, "key_symbol_3"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 795
    const-string v0, "key_symbol_4"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 797
    const-string v0, "key_symbol_5"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 799
    const-string v0, "key_symbol_6"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 801
    const-string v0, "key_symbol_7"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 803
    const-string v0, "key_symbol_8"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 805
    const-string v0, "key_symbol_9"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 807
    const-string v0, "key_symbol_10"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 809
    const-string v0, "key_symbol_11"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 811
    const-string v0, "key_symbol_12"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 813
    const-string v0, "key_symbol_13"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 815
    const-string v0, "key_symbol_14"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 817
    const-string v0, "key_symbol_15"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 819
    const-string v0, "key_symbol_16"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 821
    const-string v0, "key_symbol_17"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 823
    const-string v0, "key_symbol_18"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 825
    const-string v0, "key_symbol_19"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 827
    const-string v0, "key_symbol_20"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 829
    const-string v0, "key_symbol_21"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 831
    const-string v0, "key_symbol_22"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 833
    const-string v0, "key_symbol_23"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 835
    const-string v0, "key_symbol_24"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 837
    const-string v0, "key_symbol_25"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 839
    const-string v0, "key_symbol_26"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 841
    const-string v0, "key_symbol_27"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 843
    const-string v0, "key_symbol_28"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 845
    const-string v0, "key_symbol_29"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 847
    const-string v0, "key_symbol_30"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 849
    const-string v0, "key_symbol_31"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 851
    const-string v0, "key_symbol_32"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 853
    const-string v0, "key_symbol_33"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 855
    const-string v0, "key_symbol_34"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 857
    const-string v0, "key_symbol_35"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 859
    const-string v0, "key_symbol_36"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 861
    const-string v0, "key_symbol_37"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 863
    const-string v0, "key_symbol_38"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 865
    const-string v0, "key_symbol_39"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 867
    const-string v0, "key_symbol_40"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 869
    const-string v0, "key_symbol_41"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 871
    const-string v0, "key_symbol_42"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 873
    const-string v0, "key_symbol_43"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 875
    const-string v0, "key_symbol_44"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 878
    const-string v0, "key_dot"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 879
    const-string v0, "key_dou"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 880
    const-string v0, "key_space"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 883
    const-string v0, "layout_safeNote"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 885
    return-void
.end method

.method private b(Landroid/widget/EditText;Landroid/content/Context;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 128
    iput-object p1, p0, Ls/b;->c:Landroid/widget/EditText;

    .line 129
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ls/b;->p:Landroid/content/Context;

    .line 130
    invoke-direct {p0, p1}, Ls/b;->a(Landroid/widget/EditText;)V

    .line 131
    return-void
.end method

.method static synthetic c(Ls/b;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Ls/b;->l:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static c()Ls/b;
    .locals 1

    .prologue
    .line 256
    sget-object v0, Ls/b;->t:Ls/b;

    return-object v0
.end method

.method private c(Landroid/widget/EditText;Landroid/content/Context;Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 134
    invoke-direct {p0, p1, p2, p3}, Ls/b;->b(Landroid/widget/EditText;Landroid/content/Context;Landroid/app/Activity;)V

    .line 136
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 140
    iget-object v1, p0, Ls/b;->q:Landroid/view/View;

    if-nez v1, :cond_0

    .line 141
    const-string v1, "mini_key_input_popup"

    invoke-static {v1}, Lj/i;->f(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "key_input_popup"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ls/b;->q:Landroid/view/View;

    .line 145
    :cond_0
    iget-object v0, p0, Ls/b;->q:Landroid/view/View;

    iput-object v0, p0, Ls/b;->r:Landroid/view/View;

    .line 147
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Ls/b;->r:Landroid/view/View;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Ls/b;->a:Landroid/widget/PopupWindow;

    .line 150
    new-instance v0, Ls/a;

    invoke-direct {v0, p0}, Ls/a;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Ls/b;->b:Landroid/os/Handler;

    .line 152
    iget-object v0, p0, Ls/b;->r:Landroid/view/View;

    invoke-direct {p0, v0}, Ls/b;->b(Landroid/view/View;)V

    .line 155
    iget-object v0, p0, Ls/b;->r:Landroid/view/View;

    const-string v1, "key_symbol_1"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 157
    const-string v1, "@"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Ls/b;->r:Landroid/view/View;

    const-string v1, "key_symbol_2"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 160
    const-string v1, "#"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Ls/b;->r:Landroid/view/View;

    const-string v1, "key_symbol_3"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 163
    const-string v1, "$"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Ls/b;->r:Landroid/view/View;

    const-string v1, "key_symbol_4"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 166
    const-string v1, "%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Ls/b;->r:Landroid/view/View;

    const-string v1, "key_symbol_5"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 169
    const-string v1, "&"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Ls/b;->r:Landroid/view/View;

    const-string v1, "inputkey1"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ls/b;->e:Landroid/widget/TextView;

    .line 172
    iget-object v0, p0, Ls/b;->r:Landroid/view/View;

    const-string v1, "inputkey2"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ls/b;->f:Landroid/widget/TextView;

    .line 173
    iget-object v0, p0, Ls/b;->r:Landroid/view/View;

    const-string v1, "inputkey3"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ls/b;->g:Landroid/widget/TextView;

    .line 174
    iget-object v0, p0, Ls/b;->r:Landroid/view/View;

    const-string v1, "inputkey4"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ls/b;->h:Landroid/widget/TextView;

    .line 176
    iget-object v0, p0, Ls/b;->r:Landroid/view/View;

    const-string v1, "layout_wordKey_abc"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Ls/b;->i:Landroid/widget/RelativeLayout;

    .line 178
    iget-object v0, p0, Ls/b;->r:Landroid/view/View;

    const-string v1, "layout_wordKey_ABC"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Ls/b;->j:Landroid/widget/RelativeLayout;

    .line 180
    iget-object v0, p0, Ls/b;->r:Landroid/view/View;

    const-string v1, "layout_wordKey_num"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Ls/b;->k:Landroid/widget/RelativeLayout;

    .line 182
    iget-object v0, p0, Ls/b;->r:Landroid/view/View;

    const-string v1, "layout_wordKey_symbol"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Ls/b;->l:Landroid/widget/RelativeLayout;

    .line 185
    iget-object v0, p0, Ls/b;->r:Landroid/view/View;

    const-string v1, "key_123"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ls/b;->m:Landroid/view/View;

    .line 186
    iget-object v0, p0, Ls/b;->r:Landroid/view/View;

    const-string v1, "key_abc2"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ls/b;->n:Landroid/view/View;

    .line 187
    iget-object v0, p0, Ls/b;->r:Landroid/view/View;

    const-string v1, "layout_safeNote"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ls/b;->o:Landroid/view/View;

    .line 190
    iget v0, p0, Ls/b;->N:I

    iput v0, p0, Ls/b;->O:I

    .line 192
    return-void
.end method

.method static synthetic e()Ls/b;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Ls/b;->t:Ls/b;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Ls/b;->c:Landroid/widget/EditText;

    .line 105
    iput-object v0, p0, Ls/b;->p:Landroid/content/Context;

    .line 106
    sput-object v0, Ls/b;->t:Ls/b;

    .line 107
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 307
    iget-object v0, p0, Ls/b;->o:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Ls/b;->H:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Ls/b;->H:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 312
    :cond_0
    iget-object v0, p0, Ls/b;->o:Landroid/view/View;

    if-eq p1, v0, :cond_2

    move-object v0, p1

    .line 313
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ls/b;->H:Landroid/widget/TextView;

    .line 314
    iget-object v0, p0, Ls/b;->H:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xbc

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 315
    iget-object v0, p0, Ls/b;->H:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 318
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "key_del1"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "key_del2"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "key_del4"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "key_del3"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 322
    :cond_1
    iget-object v0, p0, Ls/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 323
    invoke-direct {p0, v0}, Ls/b;->b(I)V

    .line 324
    iget-object v0, p0, Ls/b;->J:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 325
    const-string v0, ""

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Ls/b;->J:[I

    invoke-direct {p0, v0, v1, v2}, Ls/b;->a(Ljava/lang/String;I[I)V

    .line 414
    :cond_2
    :goto_0
    return-void

    .line 327
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "key_space"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 328
    iget-object v0, p0, Ls/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 329
    const-string v1, " "

    invoke-direct {p0, v1, v0}, Ls/b;->a(Ljava/lang/String;I)V

    .line 330
    iget-object v0, p0, Ls/b;->J:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 331
    const-string v0, ""

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Ls/b;->J:[I

    invoke-direct {p0, v0, v1, v2}, Ls/b;->a(Ljava/lang/String;I[I)V

    goto :goto_0

    .line 335
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "key_ABC"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 336
    const/4 v0, 0x1

    iput v0, p0, Ls/b;->C:I

    .line 337
    iget-object v0, p0, Ls/b;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Ls/b;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Ls/b;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Ls/b;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Ls/b;->m:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Ls/b;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Ls/b;->J:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 344
    const-string v0, ""

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Ls/b;->J:[I

    invoke-direct {p0, v0, v1, v2}, Ls/b;->a(Ljava/lang/String;I[I)V

    goto :goto_0

    .line 349
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "key_abc1"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "key_abc2"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 351
    :cond_6
    iput v3, p0, Ls/b;->C:I

    .line 352
    iget-object v0, p0, Ls/b;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Ls/b;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Ls/b;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Ls/b;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Ls/b;->m:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Ls/b;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 358
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "key_abc2"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 359
    iget-object v0, p0, Ls/b;->J:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 360
    const-string v0, "abc"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Ls/b;->J:[I

    invoke-direct {p0, v0, v1, v2}, Ls/b;->a(Ljava/lang/String;I[I)V

    goto/16 :goto_0

    .line 362
    :cond_7
    iget-object v0, p0, Ls/b;->J:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 363
    const-string v0, ""

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Ls/b;->J:[I

    invoke-direct {p0, v0, v1, v2}, Ls/b;->a(Ljava/lang/String;I[I)V

    goto/16 :goto_0

    .line 368
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "key_123"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "key_symbol_more2"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 370
    :cond_9
    const/4 v0, 0x2

    iput v0, p0, Ls/b;->C:I

    .line 371
    iget-object v0, p0, Ls/b;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Ls/b;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Ls/b;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Ls/b;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Ls/b;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Ls/b;->n:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 377
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "key_123"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 378
    iget-object v0, p0, Ls/b;->J:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 379
    const-string v0, "123"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Ls/b;->J:[I

    invoke-direct {p0, v0, v1, v2}, Ls/b;->a(Ljava/lang/String;I[I)V

    goto/16 :goto_0

    .line 381
    :cond_a
    iget-object v0, p0, Ls/b;->J:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 382
    const-string/jumbo v0, "\u66f4\u591a"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Ls/b;->J:[I

    invoke-direct {p0, v0, v1, v2}, Ls/b;->a(Ljava/lang/String;I[I)V

    goto/16 :goto_0

    .line 388
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "key_symbol_more"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 389
    const/4 v0, 0x3

    iput v0, p0, Ls/b;->C:I

    .line 390
    iget-object v0, p0, Ls/b;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Ls/b;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Ls/b;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Ls/b;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Ls/b;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Ls/b;->n:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Ls/b;->J:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 397
    const-string/jumbo v0, "\u66f4\u591a"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Ls/b;->J:[I

    invoke-direct {p0, v0, v1, v2}, Ls/b;->a(Ljava/lang/String;I[I)V

    goto/16 :goto_0

    .line 401
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "key_enter"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 402
    invoke-virtual {p0}, Ls/b;->d()V

    goto/16 :goto_0

    .line 406
    :cond_d
    iget-object v0, p0, Ls/b;->J:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 407
    iget-object v0, p0, Ls/b;->H:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Ls/b;->J:[I

    invoke-direct {p0, v0, v1, v2}, Ls/b;->a(Ljava/lang/String;I[I)V

    .line 410
    iget-object v0, p0, Ls/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 411
    iget-object v1, p0, Ls/b;->H:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Ls/b;->a(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public a(Landroid/view/View;Landroid/app/Activity;ZZ)V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 197
    iget-boolean v0, p0, Ls/b;->s:Z

    if-eqz v0, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-boolean v0, p0, Ls/b;->s:Z

    if-nez v0, :cond_2

    .line 201
    if-eqz p3, :cond_3

    .line 202
    const/4 v0, 0x2

    iput v0, p0, Ls/b;->C:I

    .line 203
    iget-object v0, p0, Ls/b;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Ls/b;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Ls/b;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Ls/b;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Ls/b;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Ls/b;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Ls/b;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 221
    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ls/b;->s:Z

    .line 224
    :try_start_0
    iget-object v0, p0, Ls/b;->a:Landroid/widget/PopupWindow;

    const/16 v1, 0x53

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_2
    iput-boolean p4, p0, Ls/b;->L:Z

    .line 234
    iget-object v0, p0, Ls/b;->b:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 235
    iget-object v0, p0, Ls/b;->b:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 237
    if-nez p4, :cond_0

    .line 238
    iget v0, p0, Ls/b;->N:I

    iget v1, p0, Ls/b;->O:I

    if-lt v0, v1, :cond_4

    .line 239
    iget-object v0, p0, Ls/b;->K:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Ls/b;->M:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 243
    :goto_3
    iget-object v0, p0, Ls/b;->K:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 211
    :cond_3
    iput v1, p0, Ls/b;->C:I

    .line 212
    iget-object v0, p0, Ls/b;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Ls/b;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Ls/b;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Ls/b;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Ls/b;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Ls/b;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Ls/b;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 228
    :catch_0
    move-exception v0

    .line 229
    const-string v0, "ShowInputLayout"

    const-string/jumbo v1, "show excption"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 241
    :cond_4
    iget-object v0, p0, Ls/b;->K:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Ls/b;->N:I

    iget v2, p0, Ls/b;->M:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3
.end method

.method public a(I)Z
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Ls/b;->s:Z

    return v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Ls/b;->s:Z

    .line 261
    iget-object v0, p0, Ls/b;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls/b;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Ls/b;->b:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 265
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 559
    sget-object v0, Ls/b;->t:Ls/b;

    if-nez v0, :cond_0

    move v0, v1

    .line 617
    :goto_0
    return v0

    .line 563
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_1
    move v0, v1

    .line 617
    goto :goto_0

    .line 566
    :sswitch_0
    monitor-enter p0

    .line 567
    :try_start_0
    iget-object v0, p0, Ls/b;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 568
    iget-object v0, p0, Ls/b;->d:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Ls/b;->H:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 570
    iget-object v0, p0, Ls/b;->H:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 573
    :cond_2
    monitor-exit p0

    move v0, v2

    .line 574
    goto :goto_0

    .line 573
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 577
    :sswitch_1
    iget-boolean v0, p0, Ls/b;->I:Z

    if-eqz v0, :cond_4

    .line 578
    iget-object v0, p0, Ls/b;->c:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    .line 579
    iget-object v0, p0, Ls/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 580
    invoke-direct {p0, v0}, Ls/b;->b(I)V

    .line 583
    :cond_3
    iget-object v0, p0, Ls/b;->b:Landroid/os/Handler;

    const/16 v1, 0x3e9

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    move v0, v2

    .line 586
    goto :goto_0

    .line 589
    :sswitch_2
    iget-object v0, p0, Ls/b;->p:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 592
    iget-object v0, p0, Ls/b;->p:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 594
    iget-object v3, p0, Ls/b;->c:Landroid/widget/EditText;

    if-eqz v3, :cond_5

    .line 595
    iget-object v3, p0, Ls/b;->c:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_5
    move v0, v2

    .line 597
    goto :goto_0

    .line 600
    :sswitch_3
    iget-object v0, p0, Ls/b;->r:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 601
    iget-object v0, p0, Ls/b;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 603
    iget-boolean v0, p0, Ls/b;->L:Z

    if-nez v0, :cond_6

    .line 604
    iget-object v0, p0, Ls/b;->K:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 606
    :try_start_1
    iget-object v0, p0, Ls/b;->K:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    :goto_1
    move v0, v2

    .line 611
    goto :goto_0

    .line 607
    :catch_0
    move-exception v0

    .line 608
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 613
    :sswitch_4
    iget-object v0, p0, Ls/b;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move v0, v2

    .line 614
    goto/16 :goto_0

    .line 563
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_3
        0x3ec -> :sswitch_4
    .end sparse-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/16 v6, 0x3e9

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 269
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 271
    invoke-virtual {p0, p1}, Ls/b;->a(Landroid/view/View;)V

    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "key_del1"

    invoke-static {v2}, Lj/i;->a(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "key_del2"

    invoke-static {v2}, Lj/i;->a(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "key_del4"

    invoke-static {v2}, Lj/i;->a(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "key_del3"

    invoke-static {v2}, Lj/i;->a(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 277
    :cond_0
    iput-boolean v0, p0, Ls/b;->I:Z

    .line 278
    iget-object v1, p0, Ls/b;->b:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 299
    :cond_1
    :goto_0
    return v0

    .line 283
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_4

    .line 285
    iget-object v2, p0, Ls/b;->b:Landroid/os/Handler;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 288
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const-string v3, "key_del1"

    invoke-static {v3}, Lj/i;->a(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const-string v3, "key_del2"

    invoke-static {v3}, Lj/i;->a(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const-string v3, "key_del4"

    invoke-static {v3}, Lj/i;->a(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const-string v3, "key_del3"

    invoke-static {v3}, Lj/i;->a(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 292
    :cond_3
    iput-boolean v1, p0, Ls/b;->I:Z

    .line 293
    iget-object v1, p0, Ls/b;->b:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 299
    goto :goto_0
.end method
