.class Lcom/sea_monster/cache/DiskLruCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sea_monster/cache/DiskLruCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sea_monster/cache/DiskLruCache$Editor;


# direct methods
.method private constructor <init>(Lcom/sea_monster/cache/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .locals 0
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 876
    iput-object p1, p0, Lcom/sea_monster/cache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/sea_monster/cache/DiskLruCache$Editor;

    .line 877
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 878
    return-void
.end method

.method synthetic constructor <init>(Lcom/sea_monster/cache/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/sea_monster/cache/DiskLruCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sea_monster/cache/DiskLruCache$Editor;
    .param p2, "x1"    # Ljava/io/OutputStream;
    .param p3, "x2"    # Lcom/sea_monster/cache/DiskLruCache$1;

    .prologue
    .line 875
    invoke-direct {p0, p1, p2}, Lcom/sea_monster/cache/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/sea_monster/cache/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 901
    :try_start_0
    iget-object v1, p0, Lcom/sea_monster/cache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    :goto_0
    return-void

    .line 902
    :catch_0
    move-exception v0

    .line 903
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/sea_monster/cache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/sea_monster/cache/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sea_monster/cache/DiskLruCache$Editor;->access$2302(Lcom/sea_monster/cache/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 910
    :try_start_0
    iget-object v1, p0, Lcom/sea_monster/cache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    :goto_0
    return-void

    .line 911
    :catch_0
    move-exception v0

    .line 912
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/sea_monster/cache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/sea_monster/cache/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sea_monster/cache/DiskLruCache$Editor;->access$2302(Lcom/sea_monster/cache/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 3
    .param p1, "oneByte"    # I

    .prologue
    .line 883
    :try_start_0
    iget-object v1, p0, Lcom/sea_monster/cache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    :goto_0
    return-void

    .line 884
    :catch_0
    move-exception v0

    .line 885
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/sea_monster/cache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/sea_monster/cache/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sea_monster/cache/DiskLruCache$Editor;->access$2302(Lcom/sea_monster/cache/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 892
    :try_start_0
    iget-object v1, p0, Lcom/sea_monster/cache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    :goto_0
    return-void

    .line 893
    :catch_0
    move-exception v0

    .line 894
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/sea_monster/cache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/sea_monster/cache/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sea_monster/cache/DiskLruCache$Editor;->access$2302(Lcom/sea_monster/cache/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method
