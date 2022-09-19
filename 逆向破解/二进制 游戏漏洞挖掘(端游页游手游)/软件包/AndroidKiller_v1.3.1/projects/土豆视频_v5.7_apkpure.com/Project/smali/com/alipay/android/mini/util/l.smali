.class Lcom/alipay/android/mini/util/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/alipay/android/mini/util/j;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/util/j;I[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/alipay/android/mini/util/l;->e:Lcom/alipay/android/mini/util/j;

    iput p2, p0, Lcom/alipay/android/mini/util/l;->a:I

    iput-object p3, p0, Lcom/alipay/android/mini/util/l;->b:[Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/mini/util/l;->c:Ljava/lang/String;

    iput p5, p0, Lcom/alipay/android/mini/util/l;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 141
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v0

    invoke-virtual {v0}, Lh/b;->b()Landroid/content/Context;

    move-result-object v5

    .line 144
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 146
    iget v0, p0, Lcom/alipay/android/mini/util/l;->a:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v8, v0

    .line 147
    const-string v0, "msp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ReadSms runnable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lj/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/alipay/android/mini/util/l;->e:Lcom/alipay/android/mini/util/j;

    invoke-static {v0}, Lcom/alipay/android/mini/util/j;->g(Lcom/alipay/android/mini/util/j;)Lr/f;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/util/l;->e:Lcom/alipay/android/mini/util/j;

    invoke-static {v1}, Lcom/alipay/android/mini/util/j;->h(Lcom/alipay/android/mini/util/j;)Ll/a;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/mini/util/l;->b:[Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/mini/util/l;->c:Ljava/lang/String;

    iget v4, p0, Lcom/alipay/android/mini/util/l;->d:I

    iget-object v10, p0, Lcom/alipay/android/mini/util/l;->e:Lcom/alipay/android/mini/util/j;

    invoke-static {v10}, Lcom/alipay/android/mini/util/j;->i(Lcom/alipay/android/mini/util/j;)Lb/m;

    move-result-object v10

    invoke-static/range {v0 .. v10}, Lcom/alipay/android/mini/util/j;->a(Lr/f;Ll/a;[Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;JJLb/m;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    iget-object v0, p0, Lcom/alipay/android/mini/util/l;->e:Lcom/alipay/android/mini/util/j;

    invoke-static {v0, v11}, Lcom/alipay/android/mini/util/j;->a(Lcom/alipay/android/mini/util/j;Z)Z

    .line 156
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 153
    iget-object v0, p0, Lcom/alipay/android/mini/util/l;->e:Lcom/alipay/android/mini/util/j;

    invoke-static {v0, v11}, Lcom/alipay/android/mini/util/j;->a(Lcom/alipay/android/mini/util/j;Z)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/mini/util/l;->e:Lcom/alipay/android/mini/util/j;

    invoke-static {v1, v11}, Lcom/alipay/android/mini/util/j;->a(Lcom/alipay/android/mini/util/j;Z)Z

    throw v0
.end method
