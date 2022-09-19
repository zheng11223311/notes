.class public Lcom/alipay/android/mini/util/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static h:Z


# instance fields
.field private a:Lcom/alipay/android/mini/widget/aa;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;

.field private f:Lcom/alipay/android/mini/widget/CustomEditText;

.field private g:Lr/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alipay/android/mini/util/c;->h:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/mini/widget/CustomEditText;Lr/h;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alipay/android/mini/util/c;->e:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/alipay/android/mini/util/c;->f:Lcom/alipay/android/mini/widget/CustomEditText;

    .line 29
    iput-object p3, p0, Lcom/alipay/android/mini/util/c;->g:Lr/h;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/util/c;)Lcom/alipay/android/mini/widget/aa;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/alipay/android/mini/util/c;->a:Lcom/alipay/android/mini/widget/aa;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/mini/util/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/alipay/android/mini/util/c;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alipay/android/mini/util/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/alipay/android/mini/util/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/mini/util/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/alipay/android/mini/util/c;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/alipay/android/mini/util/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/alipay/android/mini/util/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/mini/util/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/alipay/android/mini/util/c;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/alipay/android/mini/util/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/alipay/android/mini/util/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/mini/util/c;)Lcom/alipay/android/mini/widget/CustomEditText;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/alipay/android/mini/util/c;->f:Lcom/alipay/android/mini/widget/CustomEditText;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/mini/util/c;)Lr/h;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/alipay/android/mini/util/c;->g:Lr/h;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lcom/alipay/android/mini/widget/aa;

    const-string/jumbo v1, "\u6709\u6548\u671f"

    iget-object v2, p0, Lcom/alipay/android/mini/util/c;->e:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/mini/widget/aa;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/mini/util/c;->a:Lcom/alipay/android/mini/widget/aa;

    .line 35
    sget-boolean v0, Lcom/alipay/android/mini/util/c;->h:Z

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/alipay/android/mini/util/c;->a:Lcom/alipay/android/mini/widget/aa;

    const-string/jumbo v1, "\u786e\u5b9a"

    new-instance v2, Lcom/alipay/android/mini/util/d;

    invoke-direct {v2, p0}, Lcom/alipay/android/mini/util/d;-><init>(Lcom/alipay/android/mini/util/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/mini/widget/aa;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/alipay/android/mini/util/c;->a:Lcom/alipay/android/mini/widget/aa;

    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Lcom/alipay/android/mini/util/e;

    invoke-direct {v2, p0}, Lcom/alipay/android/mini/util/e;-><init>(Lcom/alipay/android/mini/util/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/mini/widget/aa;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 90
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/mini/util/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/util/c;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/util/c;->a:Lcom/alipay/android/mini/widget/aa;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/aa;->a()V

    .line 96
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/mini/util/c;->a:Lcom/alipay/android/mini/widget/aa;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/aa;->c()V

    .line 97
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/util/c;->a:Lcom/alipay/android/mini/widget/aa;

    const-string/jumbo v1, "\u786e\u5b9a"

    new-instance v2, Lcom/alipay/android/mini/util/f;

    invoke-direct {v2, p0}, Lcom/alipay/android/mini/util/f;-><init>(Lcom/alipay/android/mini/util/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/mini/widget/aa;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/alipay/android/mini/util/c;->a:Lcom/alipay/android/mini/widget/aa;

    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Lcom/alipay/android/mini/util/g;

    invoke-direct {v2, p0}, Lcom/alipay/android/mini/util/g;-><init>(Lcom/alipay/android/mini/util/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/mini/widget/aa;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/mini/util/c;->a:Lcom/alipay/android/mini/widget/aa;

    iget-object v1, p0, Lcom/alipay/android/mini/util/c;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/mini/util/c;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/mini/widget/aa;->a(II)V

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/mini/util/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/util/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
