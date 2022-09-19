.class Lf/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/StringBuilder;

.field final synthetic b:Lf/c;


# direct methods
.method constructor <init>(Lf/c;Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lf/d;->b:Lf/c;

    iput-object p2, p0, Lf/d;->a:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 107
    :try_start_0
    new-instance v0, Lf/e;

    sget-object v1, Lf/a;->f:Lf/a;

    iget-object v2, p0, Lf/d;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lf/e;-><init>(Lf/a;Ljava/lang/String;)V

    invoke-virtual {v0}, Lf/e;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
