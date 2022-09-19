.class public Lcom/alipay/android/app/net/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x3e8

.field public static final b:I = 0x1f7

.field public static final c:I


# instance fields
.field d:Lcom/alipay/android/app/net/a;

.field e:[Lorg/apache/http/Header;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lorg/json/JSONObject;

.field private m:Ljava/lang/String;

.field private n:Lm/d;

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/net/e;->f:I

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/net/e;->g:Ljava/lang/String;

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/app/net/e;->h:J

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/net/e;->i:Ljava/lang/String;

    .line 32
    iput-object v2, p0, Lcom/alipay/android/app/net/e;->j:Ljava/lang/String;

    .line 33
    iput-object v2, p0, Lcom/alipay/android/app/net/e;->k:Ljava/lang/String;

    .line 35
    iput-object v2, p0, Lcom/alipay/android/app/net/e;->l:Lorg/json/JSONObject;

    .line 39
    iput-boolean v3, p0, Lcom/alipay/android/app/net/e;->o:Z

    .line 41
    iput-boolean v3, p0, Lcom/alipay/android/app/net/e;->p:Z

    .line 46
    iput-object v2, p0, Lcom/alipay/android/app/net/e;->d:Lcom/alipay/android/app/net/a;

    .line 51
    iput-object v2, p0, Lcom/alipay/android/app/net/e;->e:[Lorg/apache/http/Header;

    .line 54
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v0

    invoke-virtual {v0}, Lh/b;->d()Lcom/alipay/android/app/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/d;->v()Lm/d;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/net/e;->n:Lm/d;

    .line 56
    return-void
.end method

.method private p()Ljava/lang/String;
    .locals 6

    .prologue
    .line 178
    const-string v0, ""

    .line 181
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resultStatus={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/net/e;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "memo={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/net/e;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "result={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/net/e;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/alipay/android/app/net/e;->j:Ljava/lang/String;

    const-string/jumbo v2, "success=\"true\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/alipay/android/app/net/e;->j:Ljava/lang/String;

    const-string v2, "call_back_url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 189
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/alipay/android/app/net/e;->j:Ljava/lang/String;

    const-string v3, "\""

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 191
    iget-object v2, p0, Lcom/alipay/android/app/net/e;->j:Ljava/lang/String;

    const-string v3, "\""

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 192
    if-lez v1, :cond_0

    if-le v2, v1, :cond_0

    .line 193
    iget-object v3, p0, Lcom/alipay/android/app/net/e;->j:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";callBackUrl={"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    :cond_0
    invoke-static {}, Lcom/alipay/android/mini/util/h;->c()J

    move-result-wide v2

    .line 200
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "openTime={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 210
    :cond_1
    :goto_0
    return-object v0

    .line 205
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 206
    iget-object v0, p0, Lcom/alipay/android/app/net/e;->j:Ljava/lang/String;

    .line 207
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/alipay/android/app/net/a;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/android/app/net/e;->d:Lcom/alipay/android/app/net/a;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 118
    iput p1, p0, Lcom/alipay/android/app/net/e;->f:I

    .line 119
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 162
    iput-wide p1, p0, Lcom/alipay/android/app/net/e;->h:J

    .line 163
    return-void
.end method

.method public a(Lcom/alipay/android/app/net/a;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/alipay/android/app/net/e;->d:Lcom/alipay/android/app/net/a;

    .line 175
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/alipay/android/app/net/e;->g:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public a(Lm/d;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/alipay/android/app/net/e;->n:Lm/d;

    .line 235
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/alipay/android/app/net/e;->l:Lorg/json/JSONObject;

    .line 167
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/alipay/android/app/net/e;->p:Z

    .line 67
    return-void
.end method

.method public a([Lorg/apache/http/Header;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/alipay/android/app/net/e;->e:[Lorg/apache/http/Header;

    .line 159
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/alipay/android/app/net/e;->i:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/alipay/android/app/net/e;->o:Z

    .line 76
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/alipay/android/app/net/e;->p:Z

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/alipay/android/app/net/e;->j:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/alipay/android/app/net/e;->o:Z

    return v0
.end method

.method public d()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/android/app/net/e;->l:Lorg/json/JSONObject;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/alipay/android/app/net/e;->k:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/alipay/android/app/net/e;->h:J

    return-wide v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/alipay/android/app/net/e;->m:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/android/app/net/e;->i:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/alipay/android/app/net/e;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/android/app/net/e;->m:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/alipay/android/app/net/e;->f:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alipay/android/app/net/e;->g:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alipay/android/app/net/e;->i:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/android/app/net/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alipay/android/app/net/e;->k:Ljava/lang/String;

    return-object v0
.end method

.method public n()[Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alipay/android/app/net/e;->e:[Lorg/apache/http/Header;

    return-object v0
.end method

.method public o()Lm/d;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/alipay/android/app/net/e;->n:Lm/d;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/app/net/e;->d:Lcom/alipay/android/app/net/a;

    invoke-virtual {v1}, Lcom/alipay/android/app/net/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/net/e;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/net/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeStamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alipay/android/app/net/e;->h:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/net/e;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/alipay/android/app/net/e;->l:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reflectedData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/net/e;->l:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    :cond_0
    return-object v0
.end method
