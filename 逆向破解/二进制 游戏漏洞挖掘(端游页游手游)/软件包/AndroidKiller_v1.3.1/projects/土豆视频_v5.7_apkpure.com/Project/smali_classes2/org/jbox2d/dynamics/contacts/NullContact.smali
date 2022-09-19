.class public Lorg/jbox2d/dynamics/contacts/NullContact;
.super Lorg/jbox2d/dynamics/contacts/Contact;
.source "NullContact.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/jbox2d/dynamics/contacts/Contact;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public clone()Lorg/jbox2d/dynamics/contacts/Contact;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lorg/jbox2d/dynamics/contacts/NullContact;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/contacts/NullContact;-><init>()V

    return-object v0
.end method

.method public evaluate(Lorg/jbox2d/dynamics/ContactListener;)V
    .locals 0
    .param p1, "cl"    # Lorg/jbox2d/dynamics/ContactListener;

    .prologue
    .line 36
    return-void
.end method

.method public getManifolds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jbox2d/collision/Manifold;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "NullContact.GetManifolds()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method
