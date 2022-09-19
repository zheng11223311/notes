.class public Lr/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/b;


# instance fields
.field private a:Lr/a;


# direct methods
.method public constructor <init>(Lr/a;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lr/c;->a:Lr/a;

    .line 20
    return-void
.end method


# virtual methods
.method public a(Ln/b;)Ld/b$a;
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic a()Ljava/lang/Enum;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lr/c;->b()Lr/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 36
    iget-object v1, p0, Lr/c;->a:Lr/a;

    if-nez v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-object v0

    .line 40
    :cond_1
    const-string v1, "name"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    iget-object v0, p0, Lr/c;->a:Lr/a;

    invoke-virtual {v0}, Lr/a;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_2
    const-string v1, "host"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 44
    iget-object v0, p0, Lr/c;->a:Lr/a;

    invoke-virtual {v0}, Lr/a;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 46
    :cond_3
    const-string v1, "params"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 47
    iget-object v0, p0, Lr/c;->a:Lr/a;

    invoke-virtual {v0}, Lr/a;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_4
    const-string v1, "enctype"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 50
    iget-object v0, p0, Lr/c;->a:Lr/a;

    invoke-virtual {v0}, Lr/a;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_5
    const-string/jumbo v1, "request_param"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 53
    iget-object v0, p0, Lr/c;->a:Lr/a;

    invoke-virtual {v0}, Lr/a;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_6
    const-string/jumbo v1, "validate"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 56
    iget-object v0, p0, Lr/c;->a:Lr/a;

    invoke-virtual {v0}, Lr/a;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    :cond_7
    const-string v1, "https"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 60
    iget-object v0, p0, Lr/c;->a:Lr/a;

    invoke-virtual {v0}, Lr/a;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_8
    const-string v1, "formSubmit"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 64
    iget-object v0, p0, Lr/c;->a:Lr/a;

    invoke-virtual {v0}, Lr/a;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 67
    :cond_9
    const-string v1, "namespace"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 68
    iget-object v0, p0, Lr/c;->a:Lr/a;

    invoke-virtual {v0}, Lr/a;->c()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 71
    :cond_a
    const-string v1, "apiVersion"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 72
    iget-object v0, p0, Lr/c;->a:Lr/a;

    invoke-virtual {v0}, Lr/a;->d()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 75
    :cond_b
    const-string v1, "apiName"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v0, p0, Lr/c;->a:Lr/a;

    invoke-virtual {v0}, Lr/a;->b()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public b()Lr/a;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lr/c;->a:Lr/a;

    return-object v0
.end method
