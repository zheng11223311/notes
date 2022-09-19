.class public final Ld/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ln/a;

.field private b:Ljava/lang/String;

.field private c:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ln/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Ld/b$a;->a:Ln/a;

    .line 46
    iput-object p2, p0, Ld/b$a;->b:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public a()Ln/a;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Ld/b$a;->a:Ln/a;

    return-object v0
.end method

.method public a([Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 62
    sget-object v0, Ln/a;->b:Ln/a;

    iput-object v0, p0, Ld/b$a;->a:Ln/a;

    .line 63
    iput-object p1, p0, Ld/b$a;->c:[Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Ld/b$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Ld/b$a;->c:[Ljava/lang/Object;

    return-object v0
.end method
