.class public Lm/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/c;


# instance fields
.field private a:Lcom/alipay/android/app/net/Request;

.field private b:Lcom/alipay/android/app/net/e;

.field private c:I

.field private d:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/e;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lm/a;->a:Lcom/alipay/android/app/net/Request;

    .line 31
    iput-object p2, p0, Lm/a;->b:Lcom/alipay/android/app/net/e;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Lcom/alipay/android/app/net/Request;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lm/a;->a:Lcom/alipay/android/app/net/Request;

    .line 36
    return-void
.end method

.method public a(Lcom/alipay/android/app/net/e;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lm/a;->b:Lcom/alipay/android/app/net/e;

    .line 40
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lm/a;->d:Lorg/json/JSONObject;

    .line 71
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lm/a;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lm/a;->c:I

    goto :goto_0
.end method

.method public i()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lm/a;->a:Lcom/alipay/android/app/net/Request;

    .line 79
    iput-object v0, p0, Lm/a;->b:Lcom/alipay/android/app/net/e;

    .line 80
    iput-object v0, p0, Lm/a;->d:Lorg/json/JSONObject;

    .line 82
    return-void
.end method

.method public j()Lcom/alipay/android/app/net/Request;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lm/a;->a:Lcom/alipay/android/app/net/Request;

    return-object v0
.end method

.method public k()Lcom/alipay/android/app/net/e;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lm/a;->b:Lcom/alipay/android/app/net/e;

    return-object v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lm/a;->c:I

    return v0
.end method

.method public m()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lm/a;->d:Lorg/json/JSONObject;

    return-object v0
.end method
