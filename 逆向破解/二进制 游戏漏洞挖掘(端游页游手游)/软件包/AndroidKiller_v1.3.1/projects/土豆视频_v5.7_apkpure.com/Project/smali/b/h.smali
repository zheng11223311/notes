.class public Lb/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Stack;

.field private b:Ljava/util/ArrayList;

.field private c:Lb/m;


# direct methods
.method public constructor <init>(Lb/m;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lb/h;->a:Ljava/util/Stack;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/h;->b:Ljava/util/ArrayList;

    .line 26
    iput-object p1, p0, Lb/h;->c:Lb/m;

    .line 27
    return-void
.end method

.method private b(Lm/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lb/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/i;

    .line 186
    invoke-interface {v0, p0, p1}, Lb/i;->a(Lb/h;Lm/a;)V

    goto :goto_0

    .line 188
    :cond_0
    return-void
.end method

.method private i()Lo/c;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lb/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/c;

    .line 164
    invoke-virtual {v0}, Lo/c;->i()V

    .line 165
    return-object v0
.end method

.method private j()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lb/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lb/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/c;

    .line 177
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/c;->a(Z)V

    .line 178
    iget-object v1, p0, Lb/h;->c:Lb/m;

    invoke-virtual {v1, v0}, Lb/m;->a(Lm/a;)V

    .line 179
    invoke-direct {p0, v0}, Lb/h;->b(Lm/a;)V

    .line 181
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lm/a;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lb/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lb/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/a;

    .line 56
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lb/i;)V
    .locals 1

    .prologue
    .line 30
    if-eqz p1, :cond_0

    .line 31
    iget-object v0, p0, Lb/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_0
    return-void
.end method

.method public a(Lm/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 39
    if-nez p1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lb/h;->c:Lb/m;

    invoke-virtual {v0, p1}, Lb/m;->a(Lm/a;)V

    .line 43
    instance-of v0, p1, Lo/c;

    if-eqz v0, :cond_0

    .line 44
    check-cast p1, Lo/c;

    .line 45
    invoke-virtual {p1}, Lo/c;->d()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lo/c;->d()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    .line 47
    iget-object v0, p0, Lb/h;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_2
    invoke-direct {p0, p1}, Lb/h;->b(Lm/a;)V

    goto :goto_0
.end method

.method public b(Lb/i;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lb/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method

.method public b()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 66
    const/4 v2, 0x0

    .line 67
    invoke-virtual {p0}, Lb/h;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v1

    .line 70
    :cond_1
    iget-object v0, p0, Lb/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/c;

    invoke-virtual {v0}, Lo/c;->k()Lcom/alipay/android/app/net/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/net/e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    :goto_1
    :try_start_0
    invoke-direct {p0}, Lb/h;->i()Lo/c;

    .line 78
    iget-object v0, p0, Lb/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lb/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/c;
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    :try_start_1
    invoke-virtual {v0}, Lo/c;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lo/c;->q()Z
    :try_end_1
    .catch Ljava/util/EmptyStackException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-nez v2, :cond_3

    .line 87
    :goto_2
    invoke-direct {p0}, Lb/h;->j()V

    .line 88
    if-nez v0, :cond_2

    move v0, v1

    :goto_3
    move v1, v0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v2

    .line 85
    :goto_4
    invoke-static {v2}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 88
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 84
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_4

    :cond_3
    move-object v2, v0

    goto :goto_1
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 97
    .line 99
    :cond_0
    iget-object v0, p0, Lb/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    .line 102
    :cond_1
    iget-object v0, p0, Lb/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/c;

    .line 103
    invoke-virtual {v0}, Lo/c;->e()Z

    move-result v0

    .line 104
    if-nez v0, :cond_2

    .line 105
    invoke-direct {p0}, Lb/h;->i()Lo/c;

    .line 107
    :cond_2
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lb/h;->g()V

    .line 111
    iget-object v0, p0, Lb/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public d()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 121
    const/4 v1, 0x0

    .line 125
    :cond_0
    :try_start_0
    iget-object v0, p0, Lb/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 146
    :goto_0
    return v0

    .line 128
    :cond_1
    invoke-direct {p0}, Lb/h;->i()Lo/c;

    move-result-object v0

    .line 129
    if-nez v1, :cond_2

    move-object v1, v0

    .line 132
    :cond_2
    iget-object v0, p0, Lb/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 133
    iget-object v0, p0, Lb/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/c;

    .line 137
    invoke-virtual {v1}, Lo/c;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lo/c;->e()Z
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    move-object v0, v1

    .line 141
    :goto_1
    invoke-virtual {v0}, Lo/c;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 142
    invoke-direct {p0}, Lb/h;->j()V

    .line 146
    :goto_2
    iget-object v0, p0, Lb/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v2

    .line 135
    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 139
    invoke-static {v1}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 144
    :cond_5
    invoke-virtual {p0}, Lb/h;->g()V

    goto :goto_2
.end method

.method public e()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lb/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 151
    iget-object v0, p0, Lb/h;->c:Lb/m;

    invoke-virtual {v0}, Lb/m;->c()V

    .line 152
    return-void
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lb/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 159
    iget-object v0, p0, Lb/h;->c:Lb/m;

    invoke-virtual {v0}, Lb/m;->d()V

    .line 160
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lb/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v1, p0, Lb/h;->c:Lb/m;

    iget-object v0, p0, Lb/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/a;

    invoke-virtual {v1, v0}, Lb/m;->b(Lm/a;)V

    .line 172
    :cond_0
    return-void
.end method

.method protected h()Lo/c;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 191
    .line 192
    iget-object v0, p0, Lb/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 193
    iget-object v0, p0, Lb/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    .line 194
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_2

    .line 195
    iget-object v0, p0, Lb/h;->a:Ljava/util/Stack;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/c;

    .line 196
    invoke-virtual {v0}, Lo/c;->d()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Lo/c;->d()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    .line 203
    :cond_0
    :goto_1
    return-object v0

    .line 194
    :cond_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method
