.class public Le/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static a()Le/b$a;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Le/b$a;

    invoke-direct {v0}, Le/b$a;-><init>()V

    .line 66
    invoke-static {}, Li/b;->g()Li/b;

    move-result-object v1

    invoke-virtual {v1}, Li/b;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Le/b$a;->a:Ljava/lang/String;

    .line 67
    invoke-static {}, Li/b;->g()Li/b;

    move-result-object v1

    invoke-virtual {v1}, Li/b;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Le/b$a;->b:Ljava/lang/String;

    .line 68
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v1

    invoke-virtual {v1}, Lh/b;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lh/a;->a(Landroid/content/Context;)Lh/a;

    move-result-object v1

    invoke-virtual {v1}, Lh/a;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Le/b$a;->c:Ljava/lang/String;

    .line 70
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v1

    invoke-virtual {v1}, Lh/b;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lh/a;->a(Landroid/content/Context;)Lh/a;

    move-result-object v1

    invoke-virtual {v1}, Lh/a;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Le/b$a;->d:Ljava/lang/String;

    .line 72
    invoke-static {}, Le/a;->A()Le/a;

    move-result-object v1

    invoke-virtual {v1}, Le/a;->w()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Le/b$a;->e:Ljava/lang/String;

    .line 73
    invoke-static {}, Le/a;->A()Le/a;

    move-result-object v1

    invoke-virtual {v1}, Le/a;->x()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Le/b$a;->f:Ljava/lang/String;

    .line 74
    return-object v0
.end method
