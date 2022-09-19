.class Lu/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/d$1;,
        Lu/d$e;,
        Lu/d$f;,
        Lu/d$d;,
        Lu/d$j;,
        Lu/d$k;,
        Lu/d$l;,
        Lu/d$b;,
        Lu/d$h;,
        Lu/d$i;,
        Lu/d$a;,
        Lu/d$m;,
        Lu/d$g;,
        Lu/d$c;
    }
.end annotation


# static fields
.field private static final a:[F

.field private static g:Ljava/util/HashMap;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lorg/xml/sax/XMLReader;

.field private d:Landroid/text/SpannableStringBuilder;

.field private e:Lu/c$b;

.field private f:Lu/c$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lu/d;->a:[F

    .line 917
    invoke-static {}, Lu/d;->b()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lu/d;->g:Ljava/util/HashMap;

    return-void

    .line 402
    nop

    :array_0
    .array-data 4
        0x3fc00000    # 1.5f
        0x3fb33333    # 1.4f
        0x3fa66666    # 1.3f
        0x3f99999a    # 1.2f
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lu/c$b;Lu/c$c;Lv/k;)V
    .locals 1

    .prologue
    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    iput-object p1, p0, Lu/d;->b:Ljava/lang/String;

    .line 414
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    .line 415
    iput-object p2, p0, Lu/d;->e:Lu/c$b;

    .line 416
    iput-object p3, p0, Lu/d;->f:Lu/c$c;

    .line 417
    iput-object p4, p0, Lu/d;->c:Lorg/xml/sax/XMLReader;

    .line 418
    return-void
.end method

.method private static a(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 598
    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v1

    invoke-interface {p0, v0, v1, p1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 600
    array-length v1, v0

    if-nez v1, :cond_0

    .line 601
    const/4 v0, 0x0

    .line 603
    :goto_0
    return-object v0

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private static a(Landroid/text/SpannableStringBuilder;)V
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 573
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 575
    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    .line 576
    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 584
    :cond_2
    if-eqz v0, :cond_0

    .line 585
    const-string v0, "\n\n"

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method private static a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 614
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 615
    invoke-static {p0, p1}, Lu/d;->a(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 616
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 618
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 620
    if-eq v2, v0, :cond_0

    .line 621
    const/16 v1, 0x21

    invoke-virtual {p0, p2, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 624
    :cond_0
    return-void
.end method

.method private static a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 608
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 609
    const/16 v1, 0x11

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 610
    return-void
.end method

.method private static a(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .locals 5

    .prologue
    .line 652
    const-string v0, ""

    const-string v1, "color"

    invoke-interface {p1, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 653
    const-string v1, ""

    const-string v2, "face"

    invoke-interface {p1, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 654
    const-string v2, ""

    const-string/jumbo v3, "size"

    invoke-interface {p1, v2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 655
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 656
    new-instance v4, Lu/d$d;

    invoke-direct {v4, v0, v1, v2}, Lu/d$d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x11

    invoke-virtual {p0, v4, v3, v3, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 658
    return-void
.end method

.method private static a(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;Lu/c$b;)V
    .locals 4

    .prologue
    .line 629
    const-string v0, ""

    const-string/jumbo v1, "src"

    invoke-interface {p1, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 630
    const/4 v0, 0x0

    .line 632
    if-eqz p2, :cond_0

    .line 633
    invoke-interface {p2, v1}, Lu/c$b;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 643
    :cond_0
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 644
    const-string/jumbo v3, "\ufffc"

    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 646
    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, v0, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/16 v1, 0x21

    invoke-virtual {p0, v3, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 648
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 515
    const-string v0, "br"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lu/d;->b(Landroid/text/SpannableStringBuilder;)V

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    const-string v0, "p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 518
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lu/d;->a(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 519
    :cond_2
    const-string v0, "div"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 520
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lu/d;->a(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 521
    :cond_3
    const-string/jumbo v0, "strong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 522
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    const-class v1, Lu/d$c;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lu/d;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    .line 524
    :cond_4
    const-string v0, "b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 525
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    const-class v1, Lu/d$c;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lu/d;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    .line 527
    :cond_5
    const-string v0, "em"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 528
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    const-class v1, Lu/d$g;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lu/d;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    .line 530
    :cond_6
    const-string v0, "cite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 531
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    const-class v1, Lu/d$g;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lu/d;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    .line 533
    :cond_7
    const-string v0, "dfn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 534
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    const-class v1, Lu/d$g;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lu/d;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 536
    :cond_8
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 537
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    const-class v1, Lu/d$g;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lu/d;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 539
    :cond_9
    const-string v0, "big"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 540
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    const-class v1, Lu/d$a;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-static {v0, v1, v2}, Lu/d;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 541
    :cond_a
    const-string/jumbo v0, "small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 542
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    const-class v1, Lu/d$i;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-static {v0, v1, v2}, Lu/d;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 544
    :cond_b
    const-string v0, "font"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 545
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lu/d;->c(Landroid/text/SpannableStringBuilder;)V

    goto/16 :goto_0

    .line 546
    :cond_c
    const-string v0, "blockquote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 547
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lu/d;->a(Landroid/text/SpannableStringBuilder;)V

    .line 548
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    const-class v1, Lu/d$b;

    new-instance v2, Landroid/text/style/QuoteSpan;

    invoke-direct {v2}, Landroid/text/style/QuoteSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lu/d;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 549
    :cond_d
    const-string/jumbo v0, "tt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 550
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    const-class v1, Lu/d$h;

    new-instance v2, Landroid/text/style/TypefaceSpan;

    const-string v3, "monospace"

    invoke-direct {v2, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lu/d;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 552
    :cond_e
    const-string v0, "a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 553
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lu/d;->d(Landroid/text/SpannableStringBuilder;)V

    goto/16 :goto_0

    .line 554
    :cond_f
    const-string/jumbo v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 555
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    const-class v1, Lu/d$m;

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lu/d;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 556
    :cond_10
    const-string/jumbo v0, "sup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 557
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    const-class v1, Lu/d$l;

    new-instance v2, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lu/d;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 558
    :cond_11
    const-string/jumbo v0, "sub"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 559
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    const-class v1, Lu/d$k;

    new-instance v2, Landroid/text/style/SubscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SubscriptSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lu/d;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 560
    :cond_12
    const-string/jumbo v0, "s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "strike"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 561
    :cond_13
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    const-class v1, Lu/d$j;

    new-instance v2, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v2}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lu/d;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 562
    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_15

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_15

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-lt v0, v1, :cond_15

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x36

    if-gt v0, v1, :cond_15

    .line 565
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lu/d;->a(Landroid/text/SpannableStringBuilder;)V

    .line 566
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lu/d;->e(Landroid/text/SpannableStringBuilder;)V

    goto/16 :goto_0

    .line 567
    :cond_15
    iget-object v0, p0, Lu/d;->f:Lu/c$c;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lu/d;->f:Lu/c$c;

    iget-object v1, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lu/d;->c:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, v5, p1, v1, v2}, Lu/c$c;->a(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 460
    const-string v0, "br"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    const-string v0, "p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 466
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lu/d;->a(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 467
    :cond_2
    const-string v0, "div"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 468
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lu/d;->a(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 469
    :cond_3
    const-string/jumbo v0, "strong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 470
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lu/d$c;

    invoke-direct {v1, v2}, Lu/d$c;-><init>(Lu/d$1;)V

    invoke-static {v0, v1}, Lu/d;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    .line 471
    :cond_4
    const-string v0, "b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 472
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lu/d$c;

    invoke-direct {v1, v2}, Lu/d$c;-><init>(Lu/d$1;)V

    invoke-static {v0, v1}, Lu/d;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    .line 473
    :cond_5
    const-string v0, "em"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 474
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lu/d$g;

    invoke-direct {v1, v2}, Lu/d$g;-><init>(Lu/d$1;)V

    invoke-static {v0, v1}, Lu/d;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    .line 475
    :cond_6
    const-string v0, "cite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 476
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lu/d$g;

    invoke-direct {v1, v2}, Lu/d$g;-><init>(Lu/d$1;)V

    invoke-static {v0, v1}, Lu/d;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    .line 477
    :cond_7
    const-string v0, "dfn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 478
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lu/d$g;

    invoke-direct {v1, v2}, Lu/d$g;-><init>(Lu/d$1;)V

    invoke-static {v0, v1}, Lu/d;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    .line 479
    :cond_8
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 480
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lu/d$g;

    invoke-direct {v1, v2}, Lu/d$g;-><init>(Lu/d$1;)V

    invoke-static {v0, v1}, Lu/d;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 481
    :cond_9
    const-string v0, "big"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 482
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lu/d$a;

    invoke-direct {v1, v2}, Lu/d$a;-><init>(Lu/d$1;)V

    invoke-static {v0, v1}, Lu/d;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 483
    :cond_a
    const-string/jumbo v0, "small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 484
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lu/d$i;

    invoke-direct {v1, v2}, Lu/d$i;-><init>(Lu/d$1;)V

    invoke-static {v0, v1}, Lu/d;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 485
    :cond_b
    const-string v0, "font"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 486
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, p2}, Lu/d;->a(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 487
    :cond_c
    const-string v0, "blockquote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 488
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lu/d;->a(Landroid/text/SpannableStringBuilder;)V

    .line 489
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lu/d$b;

    invoke-direct {v1, v2}, Lu/d$b;-><init>(Lu/d$1;)V

    invoke-static {v0, v1}, Lu/d;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 490
    :cond_d
    const-string/jumbo v0, "tt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 491
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lu/d$h;

    invoke-direct {v1, v2}, Lu/d$h;-><init>(Lu/d$1;)V

    invoke-static {v0, v1}, Lu/d;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 492
    :cond_e
    const-string v0, "a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 493
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, p2}, Lu/d;->b(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 494
    :cond_f
    const-string/jumbo v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 495
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lu/d$m;

    invoke-direct {v1, v2}, Lu/d$m;-><init>(Lu/d$1;)V

    invoke-static {v0, v1}, Lu/d;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 496
    :cond_10
    const-string/jumbo v0, "sup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 497
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lu/d$l;

    invoke-direct {v1, v2}, Lu/d$l;-><init>(Lu/d$1;)V

    invoke-static {v0, v1}, Lu/d;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 498
    :cond_11
    const-string/jumbo v0, "sub"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 499
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lu/d$k;

    invoke-direct {v1, v2}, Lu/d$k;-><init>(Lu/d$1;)V

    invoke-static {v0, v1}, Lu/d;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 500
    :cond_12
    const-string/jumbo v0, "s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "strike"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 501
    :cond_13
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lu/d$j;

    invoke-direct {v1, v2}, Lu/d$j;-><init>(Lu/d$1;)V

    invoke-static {v0, v1}, Lu/d;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 502
    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_15

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-lt v0, v1, :cond_15

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x36

    if-gt v0, v1, :cond_15

    .line 505
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lu/d;->a(Landroid/text/SpannableStringBuilder;)V

    .line 506
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lu/d$e;

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x31

    invoke-direct {v1, v2}, Lu/d$e;-><init>(I)V

    invoke-static {v0, v1}, Lu/d;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 507
    :cond_15
    const-string v0, "img"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 508
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lu/d;->e:Lu/c$b;

    invoke-static {v0, p2, v1}, Lu/d;->a(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;Lu/c$b;)V

    goto/16 :goto_0

    .line 509
    :cond_16
    iget-object v0, p0, Lu/d;->f:Lu/c$c;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lu/d;->f:Lu/c$c;

    iget-object v1, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lu/d;->c:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, v3, p1, v1, v2}, Lu/c$c;->a(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V

    goto/16 :goto_0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 950
    sget-object v0, Lu/d;->g:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 951
    if-eqz v0, :cond_0

    .line 952
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 957
    :goto_0
    return v0

    .line 955
    :cond_0
    const/4 v0, -0x1

    :try_start_0
    invoke-static {p0, v0}, Lu/e;->a(Ljava/lang/CharSequence;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 956
    :catch_0
    move-exception v0

    move v0, v1

    .line 957
    goto :goto_0
.end method

.method private static b()Ljava/util/HashMap;
    .locals 3

    .prologue
    .line 920
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 921
    const-string v1, "aqua"

    const v2, 0xffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    const-string v1, "black"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    const-string v1, "blue"

    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    const-string v1, "fuchsia"

    const v2, 0xff00ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    const-string v1, "green"

    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    const-string v1, "grey"

    const v2, 0x808080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    const-string v1, "lime"

    const v2, 0xff00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    const-string v1, "maroon"

    const/high16 v2, 0x800000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    const-string v1, "navy"

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    const-string v1, "olive"

    const v2, 0x808000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    const-string v1, "purple"

    const v2, 0x800080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    const-string/jumbo v1, "red"

    const/high16 v2, 0xff0000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    const-string/jumbo v1, "silver"

    const v2, 0xc0c0c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    const-string/jumbo v1, "teal"

    const v2, 0x8080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    const-string/jumbo v1, "white"

    const v2, 0xffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    const-string/jumbo v1, "yellow"

    const v2, 0xffff00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    return-object v0
.end method

.method private static b(Landroid/text/SpannableStringBuilder;)V
    .locals 1

    .prologue
    .line 590
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 591
    return-void
.end method

.method private static b(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .locals 3

    .prologue
    .line 737
    const-string v0, ""

    const-string v1, "href"

    invoke-interface {p1, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 739
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 740
    new-instance v2, Lu/d$f;

    invoke-direct {v2, v0}, Lu/d$f;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x11

    invoke-virtual {p0, v2, v1, v1, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 741
    return-void
.end method

.method private static c(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 963
    const/4 v1, 0x0

    .line 964
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 966
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 977
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 979
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 984
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    return v0

    .line 967
    :catch_0
    move-exception v2

    .line 968
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 970
    :try_start_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 973
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 980
    :catch_1
    move-exception v1

    .line 981
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 971
    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method private static c(Landroid/text/SpannableStringBuilder;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/16 v9, 0x21

    const/4 v1, 0x0

    .line 661
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    .line 662
    const-class v0, Lu/d$d;

    invoke-static {p0, v0}, Lu/d;->a(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 663
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 665
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 667
    if-eq v8, v7, :cond_2

    move-object v6, v0

    .line 668
    check-cast v6, Lu/d$d;

    .line 670
    iget-object v0, v6, Lu/d$d;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 671
    iget-object v0, v6, Lu/d$d;->a:Ljava/lang/String;

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 672
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 673
    iget-object v3, v6, Lu/d$d;->a:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 674
    const-string v4, "color"

    const-string v5, "android"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 675
    if-eqz v3, :cond_0

    .line 676
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 677
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    move v3, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, v0, v8, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 690
    :cond_0
    :goto_0
    iget-object v0, v6, Lu/d$d;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 691
    new-instance v0, Landroid/text/style/TypefaceSpan;

    iget-object v3, v6, Lu/d$d;->b:Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v8, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 695
    :cond_1
    iget-object v0, v6, Lu/d$d;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 696
    iget-object v0, v6, Lu/d$d;->c:Ljava/lang/String;

    const-string v3, "pt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 697
    iget-object v0, v6, Lu/d$d;->c:Ljava/lang/String;

    invoke-static {v0}, Lu/d;->c(Ljava/lang/String;)I

    move-result v0

    .line 698
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v3

    invoke-virtual {v3}, Lh/b;->b()Landroid/content/Context;

    move-result-object v3

    int-to-float v0, v0

    invoke-static {v3, v0}, Lj/l;->a(Landroid/content/Context;F)I

    move-result v3

    .line 700
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, v0, v8, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 733
    :cond_2
    :goto_1
    return-void

    .line 682
    :cond_3
    iget-object v0, v6, Lu/d$d;->a:Ljava/lang/String;

    invoke-static {v0}, Lu/d;->b(Ljava/lang/String;)I

    move-result v0

    .line 683
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 684
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const/high16 v4, -0x1000000

    or-int/2addr v0, v4

    invoke-direct {v3, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v3, v8, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 704
    :cond_4
    iget-object v0, v6, Lu/d$d;->c:Ljava/lang/String;

    invoke-static {v0}, Lu/d;->c(Ljava/lang/String;)I

    move-result v0

    .line 706
    packed-switch v0, :pswitch_data_0

    .line 717
    :pswitch_0
    const-string v0, "large"

    invoke-static {v0}, Lj/l;->c(Ljava/lang/String;)F

    move-result v0

    .line 725
    :goto_2
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v3

    invoke-virtual {v3}, Lh/b;->b()Landroid/content/Context;

    move-result-object v3

    .line 726
    float-to-int v0, v0

    int-to-float v0, v0

    invoke-static {v3, v0}, Lj/l;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v3, v0

    .line 727
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    float-to-int v3, v3

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, v0, v8, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 710
    :pswitch_1
    const-string/jumbo v0, "small"

    invoke-static {v0}, Lj/l;->c(Ljava/lang/String;)F

    move-result v0

    goto :goto_2

    .line 713
    :pswitch_2
    const-string v0, "medium"

    invoke-static {v0}, Lj/l;->c(Ljava/lang/String;)F

    move-result v0

    goto :goto_2

    .line 722
    :pswitch_3
    const-string v0, "huge"

    invoke-static {v0}, Lj/l;->c(Ljava/lang/String;)F

    move-result v0

    goto :goto_2

    .line 706
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static d(Landroid/text/SpannableStringBuilder;)V
    .locals 4

    .prologue
    .line 744
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 745
    const-class v0, Lu/d$f;

    invoke-static {p0, v0}, Lu/d;->a(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 746
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 748
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 750
    if-eq v2, v1, :cond_0

    .line 751
    check-cast v0, Lu/d$f;

    .line 753
    iget-object v3, v0, Lu/d$f;->a:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 754
    new-instance v3, Landroid/text/style/URLSpan;

    iget-object v0, v0, Lu/d$f;->a:Ljava/lang/String;

    invoke-direct {v3, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x21

    invoke-virtual {p0, v3, v2, v1, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 758
    :cond_0
    return-void
.end method

.method private static e(Landroid/text/SpannableStringBuilder;)V
    .locals 6

    .prologue
    const/16 v5, 0x21

    .line 761
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 762
    const-class v0, Lu/d$e;

    invoke-static {p0, v0}, Lu/d;->a(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 764
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 766
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 769
    :goto_0
    if-le v1, v2, :cond_0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 770
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 773
    :cond_0
    if-eq v2, v1, :cond_1

    .line 774
    check-cast v0, Lu/d$e;

    .line 776
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    sget-object v4, Lu/d;->a:[F

    invoke-static {v0}, Lu/d$e;->a(Lu/d$e;)I

    move-result v0

    aget v0, v4, v0

    invoke-direct {v3, v0}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v3, v2, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 778
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, v2, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 781
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Landroid/text/Spanned;
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/4 v0, 0x0

    .line 422
    iget-object v1, p0, Lu/d;->c:Lorg/xml/sax/XMLReader;

    invoke-interface {v1, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 424
    :try_start_0
    iget-object v1, p0, Lu/d;->c:Lorg/xml/sax/XMLReader;

    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    iget-object v4, p0, Lu/d;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    .line 434
    iget-object v1, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-class v3, Landroid/text/style/ParagraphStyle;

    invoke-virtual {v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 436
    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_2

    .line 437
    iget-object v1, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 438
    iget-object v1, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 441
    add-int/lit8 v4, v1, -0x2

    if-ltz v4, :cond_0

    .line 442
    iget-object v4, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_0

    iget-object v4, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v5, v1, -0x2

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_0

    .line 444
    add-int/lit8 v1, v1, -0x1

    .line 448
    :cond_0
    if-ne v1, v3, :cond_1

    .line 449
    iget-object v1, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 436
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 425
    :catch_0
    move-exception v0

    .line 427
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 428
    :catch_1
    move-exception v0

    .line 430
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 451
    :cond_1
    iget-object v4, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    aget-object v5, v2, v0

    const/16 v6, 0x33

    invoke-virtual {v4, v5, v3, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 456
    :cond_2
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public characters([CII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x20

    const/16 v1, 0xa

    .line 811
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 818
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, p3, :cond_5

    .line 819
    add-int v0, v2, p2

    aget-char v0, p1, v0

    .line 821
    if-eq v0, v5, :cond_0

    if-ne v0, v1, :cond_4

    .line 823
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 825
    if-nez v0, :cond_3

    .line 826
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 828
    if-nez v0, :cond_2

    move v0, v1

    .line 837
    :goto_1
    if-eq v0, v5, :cond_1

    if-eq v0, v1, :cond_1

    .line 838
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 818
    :cond_1
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 831
    :cond_2
    iget-object v4, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    goto :goto_1

    .line 834
    :cond_3
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    goto :goto_1

    .line 841
    :cond_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 845
    :cond_5
    iget-object v0, p0, Lu/d;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 846
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 790
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 806
    invoke-direct {p0, p2}, Lu/d;->a(Ljava/lang/String;)V

    .line 807
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 797
    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 850
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 854
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    .prologue
    .line 784
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 857
    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 787
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 801
    invoke-direct {p0, p2, p4}, Lu/d;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 802
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 794
    return-void
.end method
