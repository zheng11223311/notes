.class Lv/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv/b;


# instance fields
.field final synthetic a:Lv/k;


# direct methods
.method constructor <init>(Lv/k;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lv/l;->a:Lv/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 1

    .prologue
    .line 455
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
