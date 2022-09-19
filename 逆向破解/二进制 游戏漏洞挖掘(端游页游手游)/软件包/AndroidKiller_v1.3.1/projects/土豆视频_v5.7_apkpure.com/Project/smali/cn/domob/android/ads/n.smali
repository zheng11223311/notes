.class public Lcn/domob/android/ads/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/n$a;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "url"

.field public static final c:Ljava/lang/String; = "auto_run"

.field public static final d:Ljava/lang/String; = "name"

.field public static final e:Ljava/lang/String; = "pkg"

.field public static final f:Ljava/lang/String; = "vc"

.field public static final g:Ljava/lang/String; = "vn"

.field public static final h:I = 0x1

.field public static final i:Ljava/lang/String; = "alreadyDownload:"


# instance fields
.field a:Lcn/domob/android/ads/c/f;

.field private j:Landroid/content/Context;

.field private k:Landroid/net/Uri;

.field private l:Lcn/domob/android/ads/e;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Lcn/domob/android/ads/n$a;

.field private u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcn/domob/android/ads/e;Lcn/domob/android/ads/n$a;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/ads/n;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/n;->a:Lcn/domob/android/ads/c/f;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/n;->n:Z

    .line 72
    iput-object p1, p0, Lcn/domob/android/ads/n;->j:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcn/domob/android/ads/n;->k:Landroid/net/Uri;

    .line 74
    iput-object p3, p0, Lcn/domob/android/ads/n;->l:Lcn/domob/android/ads/e;

    .line 75
    iput-object p4, p0, Lcn/domob/android/ads/n;->t:Lcn/domob/android/ads/n$a;

    .line 76
    iput-object p5, p0, Lcn/domob/android/ads/n;->u:Ljava/lang/String;

    .line 77
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcn/domob/android/ads/x;)V
    .locals 9

    .prologue
    .line 92
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcn/domob/android/ads/n;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/x;)V

    .line 93
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/x;)V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/ads/n;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/n;->a:Lcn/domob/android/ads/c/f;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/n;->n:Z

    .line 97
    iput-object p1, p0, Lcn/domob/android/ads/n;->j:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcn/domob/android/ads/n;->m:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Lcn/domob/android/ads/n;->o:Ljava/lang/String;

    .line 100
    iput-object p4, p0, Lcn/domob/android/ads/n;->p:Ljava/lang/String;

    .line 101
    iput p5, p0, Lcn/domob/android/ads/n;->q:I

    .line 102
    iput-object p6, p0, Lcn/domob/android/ads/n;->r:Ljava/lang/String;

    .line 103
    iput-object p7, p0, Lcn/domob/android/ads/n;->s:Ljava/lang/String;

    .line 104
    iput-object p8, p0, Lcn/domob/android/ads/n;->t:Lcn/domob/android/ads/n$a;

    .line 105
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/n;)Lcn/domob/android/ads/n$a;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcn/domob/android/ads/n;->t:Lcn/domob/android/ads/n$a;

    return-object v0
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_0

    .line 196
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 6

    .prologue
    .line 262
    new-instance v3, Lcn/domob/android/ads/n$4;

    invoke-direct {v3}, Lcn/domob/android/ads/n$4;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcn/domob/android/c/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/c/b;Ljava/lang/String;I)V

    .line 299
    return-void
.end method

.method static synthetic b(Lcn/domob/android/ads/n;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcn/domob/android/ads/n;->j:Landroid/content/Context;

    return-object v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 175
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/n;->k:Landroid/net/Uri;

    const-string/jumbo v1, "url"

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/n;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/n;->m:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcn/domob/android/ads/n;->k:Landroid/net/Uri;

    const-string v1, "auto_run"

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/n;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcn/domob/android/ads/n;->n:Z

    .line 178
    iget-object v0, p0, Lcn/domob/android/ads/n;->k:Landroid/net/Uri;

    const-string v1, "name"

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/n;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/n;->o:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcn/domob/android/ads/n;->k:Landroid/net/Uri;

    const-string v1, "pkg"

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/n;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/n;->p:Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcn/domob/android/ads/n;->k:Landroid/net/Uri;

    const-string/jumbo v1, "vc"

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/n;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput v0, p0, Lcn/domob/android/ads/n;->q:I

    .line 182
    iget-object v0, p0, Lcn/domob/android/ads/n;->k:Landroid/net/Uri;

    const-string/jumbo v1, "vn"

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/n;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/n;->r:Ljava/lang/String;

    .line 186
    :goto_2
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/n;->k:Landroid/net/Uri;

    const-string v1, "auto_run"

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/n;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 180
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/n;->k:Landroid/net/Uri;

    const-string/jumbo v1, "vc"

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/n;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    iget-object v0, p0, Lcn/domob/android/ads/n;->a:Lcn/domob/android/ads/c/f;

    const-string v1, "Error happened in getting download info"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private l()V
    .locals 7

    .prologue
    .line 203
    iget-object v0, p0, Lcn/domob/android/ads/n;->a:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start Download url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/n;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcn/domob/android/ads/n;->m:Ljava/lang/String;

    iget-object v1, p0, Lcn/domob/android/ads/n;->o:Ljava/lang/String;

    iget-object v2, p0, Lcn/domob/android/ads/n;->p:Ljava/lang/String;

    iget-object v3, p0, Lcn/domob/android/ads/n;->j:Landroid/content/Context;

    new-instance v4, Lcn/domob/android/ads/n$3;

    invoke-direct {v4, p0}, Lcn/domob/android/ads/n$3;-><init>(Lcn/domob/android/ads/n;)V

    iget-object v5, p0, Lcn/domob/android/ads/n;->s:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcn/domob/android/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/c/b;Ljava/lang/String;Z)V

    .line 257
    return-void
.end method


# virtual methods
.method public a()Lcn/domob/android/ads/e;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcn/domob/android/ads/n;->l:Lcn/domob/android/ads/e;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcn/domob/android/ads/n;->u:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcn/domob/android/ads/n;->o:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcn/domob/android/ads/n;->p:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcn/domob/android/ads/n;->q:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcn/domob/android/ads/n;->r:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcn/domob/android/ads/n;->n:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcn/domob/android/ads/n;->m:Ljava/lang/String;

    return-object v0
.end method

.method public h()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcn/domob/android/ads/n;->k:Landroid/net/Uri;

    return-object v0
.end method

.method public i()V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcn/domob/android/ads/n;->k:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcn/domob/android/ads/n;->k()V

    .line 144
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/n;->o:Ljava/lang/String;

    invoke-static {v0}, Lcn/domob/android/ads/c/e;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    const-string/jumbo v0, "\u5e94\u7528"

    iput-object v0, p0, Lcn/domob/android/ads/n;->o:Ljava/lang/String;

    .line 148
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/n;->j:Landroid/content/Context;

    iget-object v1, p0, Lcn/domob/android/ads/n;->m:Ljava/lang/String;

    iget-object v2, p0, Lcn/domob/android/ads/n;->o:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/domob/android/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_3

    .line 151
    iget-object v1, p0, Lcn/domob/android/ads/n;->j:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 152
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcn/domob/android/ads/n;->j:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "\u5b89\u88c5"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/android/ads/n;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u5df2\u7ecf\u4e0b\u8f7d\u662f\u5426\u73b0\u5728\u5b89\u88c5?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u5426"

    new-instance v3, Lcn/domob/android/ads/n$2;

    invoke-direct {v3, p0}, Lcn/domob/android/ads/n$2;-><init>(Lcn/domob/android/ads/n;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u662f"

    new-instance v3, Lcn/domob/android/ads/n$1;

    invoke-direct {v3, p0, v0}, Lcn/domob/android/ads/n$1;-><init>(Lcn/domob/android/ads/n;Landroid/content/Intent;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 171
    :cond_2
    :goto_0
    return-void

    .line 169
    :cond_3
    invoke-direct {p0}, Lcn/domob/android/ads/n;->l()V

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcn/domob/android/ads/n;->u:Ljava/lang/String;

    return-object v0
.end method
