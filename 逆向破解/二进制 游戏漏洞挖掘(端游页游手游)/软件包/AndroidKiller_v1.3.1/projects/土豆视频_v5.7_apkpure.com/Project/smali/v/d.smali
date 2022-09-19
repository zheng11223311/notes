.class public Lv/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lv/e;

.field private b:Lv/a;

.field private c:Lv/d;

.field private d:Z


# direct methods
.method public constructor <init>(Lv/e;Z)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lv/d;->a:Lv/e;

    .line 42
    if-eqz p2, :cond_0

    .line 43
    new-instance v0, Lv/a;

    invoke-virtual {p1}, Lv/e;->g()Lv/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lv/a;-><init>(Lorg/xml/sax/Attributes;)V

    iput-object v0, p0, Lv/d;->b:Lv/a;

    .line 46
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lv/d;->c:Lv/d;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lv/d;->d:Z

    .line 48
    return-void

    .line 45
    :cond_0
    new-instance v0, Lv/a;

    invoke-direct {v0}, Lv/a;-><init>()V

    iput-object v0, p0, Lv/d;->b:Lv/a;

    goto :goto_0
.end method


# virtual methods
.method public a()Lv/e;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lv/d;->a:Lv/e;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lv/d;->a:Lv/e;

    iget-object v1, p0, Lv/d;->b:Lv/a;

    invoke-virtual {v0, v1, p1, p2, p3}, Lv/e;->a(Lv/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public a(Lv/d;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lv/d;->c:Lv/d;

    .line 90
    return-void
.end method

.method public b()Lv/a;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lv/d;->b:Lv/a;

    return-object v0
.end method

.method public b(Lv/d;)Z
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lv/d;->a:Lv/e;

    iget-object v1, p1, Lv/d;->a:Lv/e;

    invoke-virtual {v0, v1}, Lv/e;->a(Lv/e;)Z

    move-result v0

    return v0
.end method

.method public c()Lv/d;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lv/d;->c:Lv/d;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lv/d;->a:Lv/e;

    invoke-virtual {v0}, Lv/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lv/d;->a:Lv/e;

    invoke-virtual {v0}, Lv/e;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lv/d;->a:Lv/e;

    invoke-virtual {v0}, Lv/e;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lv/d;->a:Lv/e;

    invoke-virtual {v0}, Lv/e;->d()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lv/d;->a:Lv/e;

    invoke-virtual {v0}, Lv/e;->e()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lv/d;->a:Lv/e;

    invoke-virtual {v0}, Lv/e;->f()I

    move-result v0

    return v0
.end method

.method public j()Lv/e;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lv/d;->a:Lv/e;

    invoke-virtual {v0}, Lv/e;->h()Lv/e;

    move-result-object v0

    return-object v0
.end method

.method public k()V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lv/d;->b:Lv/a;

    invoke-virtual {v0}, Lv/a;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 197
    iget-object v1, p0, Lv/d;->b:Lv/a;

    invoke-virtual {v1, v0}, Lv/a;->getType(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lv/d;->b:Lv/a;

    invoke-virtual {v1, v0}, Lv/a;->getQName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    :cond_0
    iget-object v1, p0, Lv/d;->b:Lv/a;

    invoke-virtual {v1, v0}, Lv/a;->a(I)V

    .line 196
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 202
    :cond_2
    return-void
.end method

.method public l()V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lv/d;->b:Lv/a;

    invoke-virtual {v0}, Lv/a;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 212
    iget-object v1, p0, Lv/d;->b:Lv/a;

    invoke-virtual {v1, v0}, Lv/a;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 213
    iget-object v2, p0, Lv/d;->b:Lv/a;

    invoke-virtual {v2, v0}, Lv/a;->getValue(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 215
    :cond_0
    iget-object v1, p0, Lv/d;->b:Lv/a;

    invoke-virtual {v1, v0}, Lv/a;->a(I)V

    .line 211
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 219
    :cond_2
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lv/d;->d:Z

    .line 228
    return-void
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lv/d;->d:Z

    return v0
.end method
