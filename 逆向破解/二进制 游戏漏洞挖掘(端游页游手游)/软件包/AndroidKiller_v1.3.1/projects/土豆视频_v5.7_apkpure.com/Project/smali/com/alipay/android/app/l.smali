.class public Lcom/alipay/android/app/l;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/alipay/android/app/l;->a:Landroid/content/Context;

    .line 16
    iput-boolean p2, p0, Lcom/alipay/android/app/l;->b:Z

    .line 17
    iput-object p3, p0, Lcom/alipay/android/app/l;->c:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 22
    new-instance v0, Lcom/alipay/android/app/k;

    iget-object v1, p0, Lcom/alipay/android/app/l;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/alipay/android/app/l;->b:Z

    iget-object v3, p0, Lcom/alipay/android/app/l;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/k;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Lcom/alipay/android/app/k;->a()Lcom/alipay/android/app/a;

    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/alipay/android/app/a;->h:I

    const/16 v2, 0x2328

    if-eq v1, v2, :cond_1

    .line 32
    :cond_0
    :goto_0
    return-object v4

    .line 29
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/l;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/alipay/android/app/a;->b(Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/l;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
