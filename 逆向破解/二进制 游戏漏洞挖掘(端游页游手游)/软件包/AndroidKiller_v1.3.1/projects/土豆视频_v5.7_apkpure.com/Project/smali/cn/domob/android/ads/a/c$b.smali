.class Lcn/domob/android/ads/a/c$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/a/c;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcn/domob/android/ads/a/c$b;->a:Lcn/domob/android/ads/a/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 112
    iput-object p3, p0, Lcn/domob/android/ads/a/c$b;->b:Ljava/lang/String;

    .line 113
    iput-object p4, p0, Lcn/domob/android/ads/a/c$b;->c:Ljava/lang/String;

    .line 115
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 121
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/a/c$b;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/a/c$b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 122
    :cond_0
    invoke-static {}, Lcn/domob/android/ads/a/c;->b()Lcn/domob/android/ads/c/f;

    move-result-object v0

    const-string v1, "local path is null"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 147
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/a/c$b;->b:Ljava/lang/String;

    .line 126
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 127
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 128
    invoke-static {}, Lcn/domob/android/ads/a/c;->b()Lcn/domob/android/ads/c/f;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The size of pic taken ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcn/domob/android/ads/a/c$b;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcn/domob/android/ads/c/a;->a(Landroid/graphics/Bitmap;JLjava/lang/String;)Z

    move-result v0

    .line 130
    if-eqz v0, :cond_3

    .line 131
    iget-object v0, p0, Lcn/domob/android/ads/a/c$b;->a:Lcn/domob/android/ads/a/c;

    invoke-static {v0}, Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/a/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    iget-object v1, p0, Lcn/domob/android/ads/a/c$b;->a:Lcn/domob/android/ads/a/c;

    invoke-static {v1}, Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/a/c;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 138
    iget-object v1, p0, Lcn/domob/android/ads/a/c$b;->a:Lcn/domob/android/ads/a/c;

    invoke-static {v1}, Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/a/c;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 140
    :cond_2
    invoke-static {}, Lcn/domob/android/ads/a/c;->b()Lcn/domob/android/ads/c/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 133
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcn/domob/android/ads/a/c$b;->a:Lcn/domob/android/ads/a/c;

    invoke-static {v0}, Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/a/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 141
    :catch_1
    move-exception v0

    .line 142
    iget-object v1, p0, Lcn/domob/android/ads/a/c$b;->a:Lcn/domob/android/ads/a/c;

    invoke-static {v1}, Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/a/c;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 143
    iget-object v1, p0, Lcn/domob/android/ads/a/c$b;->a:Lcn/domob/android/ads/a/c;

    invoke-static {v1}, Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/a/c;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 145
    :cond_4
    invoke-static {}, Lcn/domob/android/ads/a/c;->b()Lcn/domob/android/ads/c/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
