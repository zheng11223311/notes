.class public Lo/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/util/SparseArray;


# instance fields
.field private b:Lb/e;

.field private c:Lo/a;

.field private d:Lo/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lo/d;->a:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method private a(I)Lo/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 171
    sget-object v0, Lo/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 172
    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-class v1, Lo/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no such window type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/a;

    .line 178
    iget-object v1, p0, Lo/d;->b:Lb/e;

    invoke-interface {v0, v1}, Lo/a;->a(Lb/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    return-object v0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    new-instance v1, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "can not creat window manager"

    invoke-direct {v1, v0, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v1
.end method

.method public static a(ILjava/lang/Class;)V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lo/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 42
    if-nez v0, :cond_0

    .line 43
    sget-object v0, Lo/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lo/b;

    invoke-direct {v0}, Lo/b;-><init>()V

    .line 54
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lo/d;->a(Lb/g;Lo/c;)V

    .line 55
    return-void
.end method

.method public a(Lb/e;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lo/d;->b:Lb/e;

    .line 76
    return-void
.end method

.method public a(Lb/g;Ljava/lang/Exception;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 113
    sget-object v0, Lo/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 114
    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-class v1, Lo/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no such window type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    iget-object v1, p0, Lo/d;->c:Lo/a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/d;->c:Lo/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v1, v0, :cond_1

    .line 119
    iget-object v0, p0, Lo/d;->c:Lo/a;

    iput-object v0, p0, Lo/d;->d:Lo/a;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lo/d;->c:Lo/a;

    .line 122
    :cond_1
    iget-object v0, p0, Lo/d;->c:Lo/a;

    if-nez v0, :cond_2

    .line 123
    invoke-direct {p0, p3}, Lo/d;->a(I)Lo/a;

    move-result-object v0

    iput-object v0, p0, Lo/d;->c:Lo/a;

    .line 125
    :cond_2
    iget-object v0, p0, Lo/d;->c:Lo/a;

    invoke-interface {v0, p1, p2}, Lo/a;->a(Lb/g;Ljava/lang/Exception;)V

    .line 126
    return-void
.end method

.method public a(Lb/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lo/d;->c:Lo/a;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lo/d;->c:Lo/a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lo/a;->a(Lb/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void

    .line 135
    :cond_0
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "no window creat on update"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lb/g;Lo/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1}, Lb/g;->b()V

    .line 91
    :cond_0
    invoke-virtual {p2}, Lo/c;->d()I

    move-result v1

    .line 92
    sget-object v0, Lo/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 93
    iget-object v2, p0, Lo/d;->c:Lo/a;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lo/d;->c:Lo/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, v0, :cond_1

    .line 94
    iget-object v0, p0, Lo/d;->c:Lo/a;

    iput-object v0, p0, Lo/d;->d:Lo/a;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lo/d;->c:Lo/a;

    .line 97
    :cond_1
    iget-object v0, p0, Lo/d;->c:Lo/a;

    if-nez v0, :cond_2

    .line 98
    invoke-direct {p0, v1}, Lo/d;->a(I)Lo/a;

    move-result-object v0

    iput-object v0, p0, Lo/d;->c:Lo/a;

    .line 100
    :cond_2
    iget-object v0, p0, Lo/d;->c:Lo/a;

    invoke-interface {v0, p1, p2}, Lo/a;->a(Lb/g;Lo/c;)V

    .line 101
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lo/d;->c:Lo/a;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lo/d;->c:Lo/a;

    invoke-interface {v0, p1}, Lo/a;->a(Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lo/d;->d:Lo/a;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lo/d;->d:Lo/a;

    invoke-interface {v0}, Lo/a;->i()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lo/d;->d:Lo/a;

    .line 159
    :cond_0
    return-void

    .line 155
    :cond_1
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "no window creat on window loaded"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Lo/d;->c:Lo/a;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lo/d;->c:Lo/a;

    invoke-interface {v0}, Lo/a;->i()V

    .line 60
    iput-object v1, p0, Lo/d;->c:Lo/a;

    .line 62
    :cond_0
    iget-object v0, p0, Lo/d;->d:Lo/a;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lo/d;->d:Lo/a;

    invoke-interface {v0}, Lo/a;->i()V

    .line 64
    iput-object v1, p0, Lo/d;->d:Lo/a;

    .line 66
    :cond_1
    iput-object v1, p0, Lo/d;->b:Lb/e;

    .line 67
    return-void
.end method

.method public c()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lo/d;->c:Lo/a;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lo/d;->c:Lo/a;

    invoke-interface {v0}, Lo/a;->a()Z

    move-result v0

    return v0

    .line 165
    :cond_0
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "no window creat on reapeat last window"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0
.end method
