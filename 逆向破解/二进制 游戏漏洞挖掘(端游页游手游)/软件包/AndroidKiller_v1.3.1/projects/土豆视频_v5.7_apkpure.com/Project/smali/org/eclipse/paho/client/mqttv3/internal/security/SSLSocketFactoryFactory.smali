.class public Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;
.super Ljava/lang/Object;
.source "SSLSocketFactoryFactory.java"


# static fields
.field public static final CIPHERSUITES:Ljava/lang/String; = "com.ibm.ssl.enabledCipherSuites"

.field private static final CLASS_NAME:Ljava/lang/String; = "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

.field public static final CLIENTAUTH:Ljava/lang/String; = "com.ibm.ssl.clientAuthentication"

.field public static final DEFAULT_PROTOCOL:Ljava/lang/String; = "TLS"

.field public static final JSSEPROVIDER:Ljava/lang/String; = "com.ibm.ssl.contextProvider"

.field public static final KEYSTORE:Ljava/lang/String; = "com.ibm.ssl.keyStore"

.field public static final KEYSTOREMGR:Ljava/lang/String; = "com.ibm.ssl.keyManager"

.field public static final KEYSTOREPROVIDER:Ljava/lang/String; = "com.ibm.ssl.keyStoreProvider"

.field public static final KEYSTOREPWD:Ljava/lang/String; = "com.ibm.ssl.keyStorePassword"

.field public static final KEYSTORETYPE:Ljava/lang/String; = "com.ibm.ssl.keyStoreType"

.field public static final SSLPROTOCOL:Ljava/lang/String; = "com.ibm.ssl.protocol"

.field public static final SYSKEYMGRALGO:Ljava/lang/String; = "ssl.KeyManagerFactory.algorithm"

.field public static final SYSKEYSTORE:Ljava/lang/String; = "javax.net.ssl.keyStore"

.field public static final SYSKEYSTOREPWD:Ljava/lang/String; = "javax.net.ssl.keyStorePassword"

.field public static final SYSKEYSTORETYPE:Ljava/lang/String; = "javax.net.ssl.keyStoreType"

.field public static final SYSTRUSTMGRALGO:Ljava/lang/String; = "ssl.TrustManagerFactory.algorithm"

.field public static final SYSTRUSTSTORE:Ljava/lang/String; = "javax.net.ssl.trustStore"

.field public static final SYSTRUSTSTOREPWD:Ljava/lang/String; = "javax.net.ssl.trustStorePassword"

.field public static final SYSTRUSTSTORETYPE:Ljava/lang/String; = "javax.net.ssl.trustStoreType"

.field public static final TRUSTSTORE:Ljava/lang/String; = "com.ibm.ssl.trustStore"

.field public static final TRUSTSTOREMGR:Ljava/lang/String; = "com.ibm.ssl.trustManager"

.field public static final TRUSTSTOREPROVIDER:Ljava/lang/String; = "com.ibm.ssl.trustStoreProvider"

.field public static final TRUSTSTOREPWD:Ljava/lang/String; = "com.ibm.ssl.trustStorePassword"

.field public static final TRUSTSTORETYPE:Ljava/lang/String; = "com.ibm.ssl.trustStoreType"

.field private static final key:[B

.field private static final propertyKeys:[Ljava/lang/String;

.field private static final xorTag:Ljava/lang/String; = "{xor}"


# instance fields
.field private configs:Ljava/util/Hashtable;

.field private defaultProperties:Ljava/util/Properties;

.field private logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 132
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.ibm.ssl.protocol"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.ibm.ssl.contextProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 133
    const-string v2, "com.ibm.ssl.keyStore"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.ibm.ssl.keyStorePassword"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.ibm.ssl.keyStoreType"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.ibm.ssl.keyStoreProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.ibm.ssl.keyManager"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 134
    const-string v2, "com.ibm.ssl.trustStore"

    aput-object v2, v0, v1

    const-string v1, "com.ibm.ssl.trustStorePassword"

    aput-object v1, v0, v3

    const/16 v1, 0x9

    const-string v2, "com.ibm.ssl.trustStoreType"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.ibm.ssl.trustStoreProvider"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 135
    const-string v2, "com.ibm.ssl.trustManager"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.ibm.ssl.enabledCipherSuites"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.ibm.ssl.clientAuthentication"

    aput-object v2, v0, v1

    .line 132
    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->propertyKeys:[Ljava/lang/String;

    .line 141
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->key:[B

    .line 144
    return-void

    .line 141
    :array_0
    .array-data 1
        -0x63t
        -0x59t
        -0x27t
        -0x80t
        0x5t
        -0x48t
        -0x77t
        -0x64t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 177
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    .line 178
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/logging/Logger;)V
    .locals 0
    .param p1, "logger"    # Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .prologue
    .line 185
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;-><init>()V

    .line 186
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 187
    return-void
.end method

.method private checkPropertyKeys(Ljava/util/Properties;)V
    .locals 6
    .param p1, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-virtual {p1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 217
    .local v2, "keys":Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 218
    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 224
    return-void

    .line 219
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 220
    .local v1, "k":Ljava/lang/String;
    invoke-direct {p0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->keyValid(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 221
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " is not a valid IBM SSL property key."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private convertPassword(Ljava/util/Properties;)V
    .locals 3
    .param p1, "p"    # Ljava/util/Properties;

    .prologue
    .line 372
    const-string v2, "com.ibm.ssl.keyStorePassword"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "pw":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v2, "{xor}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 374
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->obfuscate([C)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "epw":Ljava/lang/String;
    const-string v2, "com.ibm.ssl.keyStorePassword"

    invoke-virtual {p1, v2, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    .end local v0    # "epw":Ljava/lang/String;
    :cond_0
    const-string v2, "com.ibm.ssl.trustStorePassword"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 378
    if-eqz v1, :cond_1

    const-string/jumbo v2, "{xor}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 379
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->obfuscate([C)Ljava/lang/String;

    move-result-object v0

    .line 380
    .restart local v0    # "epw":Ljava/lang/String;
    const-string v2, "com.ibm.ssl.trustStorePassword"

    invoke-virtual {p1, v2, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .end local v0    # "epw":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static deObfuscate(Ljava/lang/String;)[C
    .locals 6
    .param p0, "ePassword"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 297
    if-nez p0, :cond_0

    .line 310
    :goto_0
    return-object v3

    .line 299
    :cond_0
    const/4 v0, 0x0

    .line 301
    .local v0, "bytes":[B
    :try_start_0
    const-string/jumbo v4, "{xor}"

    .line 302
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 301
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/paho/client/mqttv3/internal/security/SimpleBase64Encoder;->decode(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 307
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-lt v2, v3, :cond_1

    .line 310
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->toChar([B)[C

    move-result-object v3

    goto :goto_0

    .line 303
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 304
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 308
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "i":I
    :cond_1
    aget-byte v3, v0, v2

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->key:[B

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->key:[B

    array-length v5, v5

    rem-int v5, v2, v5

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 307
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "configID"    # Ljava/lang/String;
    .param p2, "ibmKey"    # Ljava/lang/String;
    .param p3, "sysProperty"    # Ljava/lang/String;

    .prologue
    .line 789
    const/4 v0, 0x0

    .line 790
    .local v0, "res":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getPropertyFromConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 791
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 798
    .end local v0    # "res":Ljava/lang/String;
    .local v1, "res":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 795
    .end local v1    # "res":Ljava/lang/String;
    .restart local v0    # "res":Ljava/lang/String;
    :cond_0
    if-eqz p3, :cond_1

    .line 796
    invoke-static {p3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v1, v0

    .line 798
    .end local v0    # "res":Ljava/lang/String;
    .restart local v1    # "res":Ljava/lang/String;
    goto :goto_0
.end method

.method private getPropertyFromConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "configID"    # Ljava/lang/String;
    .param p2, "ibmKey"    # Ljava/lang/String;

    .prologue
    .line 813
    const/4 v1, 0x0

    .line 814
    .local v1, "res":Ljava/lang/String;
    const/4 v0, 0x0

    .line 815
    .local v0, "p":Ljava/util/Properties;
    if-eqz p1, :cond_0

    .line 816
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "p":Ljava/util/Properties;
    check-cast v0, Ljava/util/Properties;

    .line 818
    .restart local v0    # "p":Ljava/util/Properties;
    :cond_0
    if-eqz v0, :cond_1

    .line 819
    invoke-virtual {v0, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 820
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 830
    .end local v1    # "res":Ljava/lang/String;
    .local v2, "res":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 824
    .end local v2    # "res":Ljava/lang/String;
    .restart local v1    # "res":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    .line 825
    if-eqz v0, :cond_2

    .line 826
    invoke-virtual {v0, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 827
    if-eqz v1, :cond_2

    move-object v2, v1

    .line 828
    .end local v1    # "res":Ljava/lang/String;
    .restart local v2    # "res":Ljava/lang/String;
    goto :goto_0

    .end local v2    # "res":Ljava/lang/String;
    .restart local v1    # "res":Ljava/lang/String;
    :cond_2
    move-object v2, v1

    .line 830
    .end local v1    # "res":Ljava/lang/String;
    .restart local v2    # "res":Ljava/lang/String;
    goto :goto_0
.end method

.method private getSSLContext(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    .locals 34
    .param p1, "configID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
        }
    .end annotation

    .prologue
    .line 1106
    const-string v4, "getSSLContext"

    .line 1107
    .local v4, "METHOD_NAME":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1109
    .local v5, "ctx":Ljavax/net/ssl/SSLContext;
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getSSLProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1110
    .local v16, "protocol":Ljava/lang/String;
    if-nez v16, :cond_0

    .line 1111
    const-string v16, "TLS"

    .line 1113
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12000"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_12

    move-object/from16 v27, p1

    :goto_0
    aput-object v27, v32, v33

    const/16 v27, 0x1

    .line 1116
    aput-object v16, v32, v27

    .line 1115
    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1119
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getJSSEProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1121
    .local v17, "provider":Ljava/lang/String;
    if-nez v17, :cond_13

    .line 1122
    :try_start_0
    invoke-static/range {v16 .. v16}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v5

    .line 1126
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12001"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_14

    move-object/from16 v27, p1

    :goto_2
    aput-object v27, v32, v33

    const/16 v27, 0x1

    .line 1129
    invoke-virtual {v5}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v32, v27

    .line 1128
    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1132
    :cond_2
    const-string v27, "com.ibm.ssl.keyStore"

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1133
    .local v13, "keyStoreName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1134
    .local v12, "keyStore":Ljava/security/KeyStore;
    const/4 v10, 0x0

    .line 1135
    .local v10, "keyMgrFact":Ljavax/net/ssl/KeyManagerFactory;
    const/4 v8, 0x0

    .line 1150
    .local v8, "keyMgr":[Ljavax/net/ssl/KeyManager;
    if-nez v12, :cond_a

    .line 1151
    if-nez v13, :cond_3

    .line 1156
    const-string v27, "com.ibm.ssl.keyStore"

    const-string v28, "javax.net.ssl.keyStore"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1158
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v27, v0

    if-eqz v27, :cond_4

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12004"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_15

    move-object/from16 v27, p1

    :goto_3
    aput-object v27, v32, v33

    const/16 v33, 0x1

    .line 1161
    if-eqz v13, :cond_16

    move-object/from16 v27, v13

    :goto_4
    aput-object v27, v32, v33

    .line 1160
    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1164
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getKeyStorePassword(Ljava/lang/String;)[C

    move-result-object v14

    .line 1165
    .local v14, "keyStorePwd":[C
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12005"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_17

    move-object/from16 v27, p1

    :goto_5
    aput-object v27, v32, v33

    const/16 v33, 0x1

    .line 1168
    if-eqz v14, :cond_18

    invoke-static {v14}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->obfuscate([C)Ljava/lang/String;

    move-result-object v27

    :goto_6
    aput-object v27, v32, v33

    .line 1167
    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1171
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getKeyStoreType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1172
    .local v15, "keyStoreType":Ljava/lang/String;
    if-nez v15, :cond_6

    .line 1173
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v15

    .line 1175
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v27, v0

    if-eqz v27, :cond_7

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12006"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_19

    move-object/from16 v27, p1

    :goto_7
    aput-object v27, v32, v33

    const/16 v33, 0x1

    .line 1178
    if-eqz v15, :cond_1a

    move-object/from16 v27, v15

    :goto_8
    aput-object v27, v32, v33

    .line 1177
    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1181
    :cond_7
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v9

    .line 1182
    .local v9, "keyMgrAlgo":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getKeyStoreProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1183
    .local v11, "keyMgrProvider":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getKeyManager(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v7

    .line 1184
    .local v7, "keyManager":Ljava/lang/String;
    if-eqz v7, :cond_8

    .line 1185
    move-object v9, v7

    .line 1188
    :cond_8
    if-eqz v13, :cond_a

    if-eqz v15, :cond_a

    if-eqz v9, :cond_a

    .line 1190
    :try_start_1
    invoke-static {v15}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v12

    .line 1191
    new-instance v27, Ljava/io/FileInputStream;

    move-object/from16 v0, v27

    invoke-direct {v0, v13}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v12, v0, v14}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 1192
    if-eqz v11, :cond_1b

    .line 1193
    invoke-static {v9, v11}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v10

    .line 1197
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v27, v0

    if-eqz v27, :cond_9

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12010"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_1c

    move-object/from16 v27, p1

    :goto_a
    aput-object v27, v32, v33

    const/16 v27, 0x1

    .line 1200
    if-eqz v9, :cond_1d

    .end local v9    # "keyMgrAlgo":Ljava/lang/String;
    :goto_b
    aput-object v9, v32, v27

    .line 1199
    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12009"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_1e

    move-object/from16 v27, p1

    :goto_c
    aput-object v27, v32, v33

    const/16 v27, 0x1

    .line 1203
    invoke-virtual {v10}, Ljavax/net/ssl/KeyManagerFactory;->getProvider()Ljava/security/Provider;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v32, v27

    .line 1202
    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1205
    :cond_9
    invoke-virtual {v10, v12, v14}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 1206
    invoke-virtual {v10}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v8

    .line 1222
    .end local v7    # "keyManager":Ljava/lang/String;
    .end local v11    # "keyMgrProvider":Ljava/lang/String;
    .end local v14    # "keyStorePwd":[C
    .end local v15    # "keyStoreType":Ljava/lang/String;
    :cond_a
    :try_start_2
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getTrustStore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1223
    .local v24, "trustStoreName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v27, v0

    if-eqz v27, :cond_b

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12011"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_1f

    move-object/from16 v27, p1

    :goto_d
    aput-object v27, v32, v33

    const/16 v33, 0x1

    .line 1226
    if-eqz v24, :cond_20

    move-object/from16 v27, v24

    :goto_e
    aput-object v27, v32, v33

    .line 1225
    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1228
    :cond_b
    const/16 v23, 0x0

    .line 1229
    .local v23, "trustStore":Ljava/security/KeyStore;
    const/16 v21, 0x0

    .line 1230
    .local v21, "trustMgrFact":Ljavax/net/ssl/TrustManagerFactory;
    const/16 v19, 0x0

    .line 1231
    .local v19, "trustMgr":[Ljavax/net/ssl/TrustManager;
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getTrustStorePassword(Ljava/lang/String;)[C

    move-result-object v25

    .line 1232
    .local v25, "trustStorePwd":[C
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v27, v0

    if-eqz v27, :cond_c

    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12012"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_21

    move-object/from16 v27, p1

    :goto_f
    aput-object v27, v32, v33

    const/16 v33, 0x1

    .line 1235
    if-eqz v25, :cond_22

    invoke-static/range {v25 .. v25}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->obfuscate([C)Ljava/lang/String;

    move-result-object v27

    :goto_10
    aput-object v27, v32, v33

    .line 1234
    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1237
    :cond_c
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getTrustStoreType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1238
    .local v26, "trustStoreType":Ljava/lang/String;
    if-nez v26, :cond_d

    .line 1239
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v26

    .line 1241
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v27, v0

    if-eqz v27, :cond_e

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12013"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_23

    move-object/from16 v27, p1

    :goto_11
    aput-object v27, v32, v33

    const/16 v33, 0x1

    .line 1244
    if-eqz v26, :cond_24

    move-object/from16 v27, v26

    :goto_12
    aput-object v27, v32, v33

    .line 1243
    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1247
    :cond_e
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v20

    .line 1248
    .local v20, "trustMgrAlgo":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getTrustStoreProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1249
    .local v22, "trustMgrProvider":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getTrustManager(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v18

    .line 1250
    .local v18, "trustManager":Ljava/lang/String;
    if-eqz v18, :cond_f

    .line 1251
    move-object/from16 v20, v18

    .line 1254
    :cond_f
    if-eqz v24, :cond_11

    if-eqz v26, :cond_11

    if-eqz v20, :cond_11

    .line 1256
    :try_start_3
    invoke-static/range {v26 .. v26}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v23

    .line 1257
    new-instance v27, Ljava/io/FileInputStream;

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 1258
    if-eqz v22, :cond_25

    .line 1259
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v21

    .line 1263
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v27, v0

    if-eqz v27, :cond_10

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12017"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_26

    move-object/from16 v27, p1

    :goto_14
    aput-object v27, v32, v33

    const/16 v27, 0x1

    .line 1267
    if-eqz v20, :cond_27

    .end local v20    # "trustMgrAlgo":Ljava/lang/String;
    :goto_15
    aput-object v20, v32, v27

    .line 1266
    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1270
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v27, v0

    const-string v28, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v29, "getSSLContext"

    const-string v30, "12016"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    if-eqz p1, :cond_28

    .end local p1    # "configID":Ljava/lang/String;
    :goto_16
    aput-object p1, v31, v32

    const/16 v32, 0x1

    .line 1271
    invoke-virtual/range {v21 .. v21}, Ljavax/net/ssl/TrustManagerFactory;->getProvider()Ljava/security/Provider;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    .line 1270
    invoke-interface/range {v27 .. v31}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1273
    :cond_10
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 1274
    invoke-virtual/range {v21 .. v21}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
    :try_end_3
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v19

    .line 1286
    :cond_11
    const/16 v27, 0x0

    :try_start_4
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v5, v8, v0, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_4 .. :try_end_4} :catch_5

    .line 1294
    return-object v5

    .line 1115
    .end local v8    # "keyMgr":[Ljavax/net/ssl/KeyManager;
    .end local v10    # "keyMgrFact":Ljavax/net/ssl/KeyManagerFactory;
    .end local v12    # "keyStore":Ljava/security/KeyStore;
    .end local v13    # "keyStoreName":Ljava/lang/String;
    .end local v17    # "provider":Ljava/lang/String;
    .end local v18    # "trustManager":Ljava/lang/String;
    .end local v19    # "trustMgr":[Ljavax/net/ssl/TrustManager;
    .end local v21    # "trustMgrFact":Ljavax/net/ssl/TrustManagerFactory;
    .end local v22    # "trustMgrProvider":Ljava/lang/String;
    .end local v23    # "trustStore":Ljava/security/KeyStore;
    .end local v24    # "trustStoreName":Ljava/lang/String;
    .end local v25    # "trustStorePwd":[C
    .end local v26    # "trustStoreType":Ljava/lang/String;
    .restart local p1    # "configID":Ljava/lang/String;
    :cond_12
    const-string v27, "null (broker defaults)"

    goto/16 :goto_0

    .line 1124
    .restart local v17    # "provider":Ljava/lang/String;
    :cond_13
    :try_start_5
    invoke-static/range {v16 .. v17}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v5

    goto/16 :goto_1

    .line 1128
    :cond_14
    const-string v27, "null (broker defaults)"

    goto/16 :goto_2

    .line 1160
    .restart local v8    # "keyMgr":[Ljavax/net/ssl/KeyManager;
    .restart local v10    # "keyMgrFact":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v12    # "keyStore":Ljava/security/KeyStore;
    .restart local v13    # "keyStoreName":Ljava/lang/String;
    :cond_15
    const-string v27, "null (broker defaults)"

    goto/16 :goto_3

    .line 1161
    :cond_16
    const-string v27, "null"

    goto/16 :goto_4

    .line 1167
    .restart local v14    # "keyStorePwd":[C
    :cond_17
    const-string v27, "null (broker defaults)"

    goto/16 :goto_5

    .line 1168
    :cond_18
    const-string v27, "null"

    goto/16 :goto_6

    .line 1177
    .restart local v15    # "keyStoreType":Ljava/lang/String;
    :cond_19
    const-string v27, "null (broker defaults)"

    goto/16 :goto_7

    .line 1178
    :cond_1a
    const-string v27, "null"
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_8

    .line 1195
    .restart local v7    # "keyManager":Ljava/lang/String;
    .restart local v9    # "keyMgrAlgo":Ljava/lang/String;
    .restart local v11    # "keyMgrProvider":Ljava/lang/String;
    :cond_1b
    :try_start_6
    invoke-static {v9}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v10

    goto/16 :goto_9

    .line 1199
    :cond_1c
    const-string v27, "null (broker defaults)"

    goto/16 :goto_a

    .line 1200
    :cond_1d
    const-string v9, "null"

    goto/16 :goto_b

    .line 1202
    .end local v9    # "keyMgrAlgo":Ljava/lang/String;
    :cond_1e
    const-string v27, "null (broker defaults)"
    :try_end_6
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_c

    .line 1207
    :catch_0
    move-exception v6

    .line 1208
    .local v6, "e":Ljava/security/KeyStoreException;
    :try_start_7
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v27
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1287
    .end local v6    # "e":Ljava/security/KeyStoreException;
    .end local v7    # "keyManager":Ljava/lang/String;
    .end local v8    # "keyMgr":[Ljavax/net/ssl/KeyManager;
    .end local v10    # "keyMgrFact":Ljavax/net/ssl/KeyManagerFactory;
    .end local v11    # "keyMgrProvider":Ljava/lang/String;
    .end local v12    # "keyStore":Ljava/security/KeyStore;
    .end local v13    # "keyStoreName":Ljava/lang/String;
    .end local v14    # "keyStorePwd":[C
    .end local v15    # "keyStoreType":Ljava/lang/String;
    .end local p1    # "configID":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 1288
    .local v6, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v27

    .line 1209
    .end local v6    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v7    # "keyManager":Ljava/lang/String;
    .restart local v8    # "keyMgr":[Ljavax/net/ssl/KeyManager;
    .restart local v10    # "keyMgrFact":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v11    # "keyMgrProvider":Ljava/lang/String;
    .restart local v12    # "keyStore":Ljava/security/KeyStore;
    .restart local v13    # "keyStoreName":Ljava/lang/String;
    .restart local v14    # "keyStorePwd":[C
    .restart local v15    # "keyStoreType":Ljava/lang/String;
    .restart local p1    # "configID":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 1210
    .local v6, "e":Ljava/security/cert/CertificateException;
    :try_start_8
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v27
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1289
    .end local v6    # "e":Ljava/security/cert/CertificateException;
    .end local v7    # "keyManager":Ljava/lang/String;
    .end local v8    # "keyMgr":[Ljavax/net/ssl/KeyManager;
    .end local v10    # "keyMgrFact":Ljavax/net/ssl/KeyManagerFactory;
    .end local v11    # "keyMgrProvider":Ljava/lang/String;
    .end local v12    # "keyStore":Ljava/security/KeyStore;
    .end local v13    # "keyStoreName":Ljava/lang/String;
    .end local v14    # "keyStorePwd":[C
    .end local v15    # "keyStoreType":Ljava/lang/String;
    .end local p1    # "configID":Ljava/lang/String;
    :catch_3
    move-exception v6

    .line 1290
    .local v6, "e":Ljava/security/NoSuchProviderException;
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v27

    .line 1211
    .end local v6    # "e":Ljava/security/NoSuchProviderException;
    .restart local v7    # "keyManager":Ljava/lang/String;
    .restart local v8    # "keyMgr":[Ljavax/net/ssl/KeyManager;
    .restart local v10    # "keyMgrFact":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v11    # "keyMgrProvider":Ljava/lang/String;
    .restart local v12    # "keyStore":Ljava/security/KeyStore;
    .restart local v13    # "keyStoreName":Ljava/lang/String;
    .restart local v14    # "keyStorePwd":[C
    .restart local v15    # "keyStoreType":Ljava/lang/String;
    .restart local p1    # "configID":Ljava/lang/String;
    :catch_4
    move-exception v6

    .line 1212
    .local v6, "e":Ljava/io/FileNotFoundException;
    :try_start_9
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v27
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_9 .. :try_end_9} :catch_5

    .line 1291
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .end local v7    # "keyManager":Ljava/lang/String;
    .end local v8    # "keyMgr":[Ljavax/net/ssl/KeyManager;
    .end local v10    # "keyMgrFact":Ljavax/net/ssl/KeyManagerFactory;
    .end local v11    # "keyMgrProvider":Ljava/lang/String;
    .end local v12    # "keyStore":Ljava/security/KeyStore;
    .end local v13    # "keyStoreName":Ljava/lang/String;
    .end local v14    # "keyStorePwd":[C
    .end local v15    # "keyStoreType":Ljava/lang/String;
    .end local p1    # "configID":Ljava/lang/String;
    :catch_5
    move-exception v6

    .line 1292
    .local v6, "e":Ljava/security/KeyManagementException;
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v27

    .line 1213
    .end local v6    # "e":Ljava/security/KeyManagementException;
    .restart local v7    # "keyManager":Ljava/lang/String;
    .restart local v8    # "keyMgr":[Ljavax/net/ssl/KeyManager;
    .restart local v10    # "keyMgrFact":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v11    # "keyMgrProvider":Ljava/lang/String;
    .restart local v12    # "keyStore":Ljava/security/KeyStore;
    .restart local v13    # "keyStoreName":Ljava/lang/String;
    .restart local v14    # "keyStorePwd":[C
    .restart local v15    # "keyStoreType":Ljava/lang/String;
    .restart local p1    # "configID":Ljava/lang/String;
    :catch_6
    move-exception v6

    .line 1214
    .local v6, "e":Ljava/io/IOException;
    :try_start_a
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v27

    .line 1215
    .end local v6    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v6

    .line 1216
    .local v6, "e":Ljava/security/UnrecoverableKeyException;
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v27

    .line 1225
    .end local v6    # "e":Ljava/security/UnrecoverableKeyException;
    .end local v7    # "keyManager":Ljava/lang/String;
    .end local v11    # "keyMgrProvider":Ljava/lang/String;
    .end local v14    # "keyStorePwd":[C
    .end local v15    # "keyStoreType":Ljava/lang/String;
    .restart local v24    # "trustStoreName":Ljava/lang/String;
    :cond_1f
    const-string v27, "null (broker defaults)"

    goto/16 :goto_d

    .line 1226
    :cond_20
    const-string v27, "null"

    goto/16 :goto_e

    .line 1234
    .restart local v19    # "trustMgr":[Ljavax/net/ssl/TrustManager;
    .restart local v21    # "trustMgrFact":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v23    # "trustStore":Ljava/security/KeyStore;
    .restart local v25    # "trustStorePwd":[C
    :cond_21
    const-string v27, "null (broker defaults)"

    goto/16 :goto_f

    .line 1235
    :cond_22
    const-string v27, "null"

    goto/16 :goto_10

    .line 1243
    .restart local v26    # "trustStoreType":Ljava/lang/String;
    :cond_23
    const-string v27, "null (broker defaults)"

    goto/16 :goto_11

    .line 1244
    :cond_24
    const-string v27, "null"
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_12

    .line 1261
    .restart local v18    # "trustManager":Ljava/lang/String;
    .restart local v20    # "trustMgrAlgo":Ljava/lang/String;
    .restart local v22    # "trustMgrProvider":Ljava/lang/String;
    :cond_25
    :try_start_b
    invoke-static/range {v20 .. v20}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v21

    goto/16 :goto_13

    .line 1266
    :cond_26
    const-string v27, "null (broker defaults)"

    goto/16 :goto_14

    .line 1267
    :cond_27
    const-string v20, "null"

    goto/16 :goto_15

    .line 1270
    .end local v20    # "trustMgrAlgo":Ljava/lang/String;
    :cond_28
    const-string p1, "null (broker defaults)"
    :try_end_b
    .catch Ljava/security/KeyStoreException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/security/cert/CertificateException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_16

    .line 1275
    .end local p1    # "configID":Ljava/lang/String;
    :catch_8
    move-exception v6

    .line 1276
    .local v6, "e":Ljava/security/KeyStoreException;
    :try_start_c
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v27

    .line 1277
    .end local v6    # "e":Ljava/security/KeyStoreException;
    :catch_9
    move-exception v6

    .line 1278
    .local v6, "e":Ljava/security/cert/CertificateException;
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v27

    .line 1279
    .end local v6    # "e":Ljava/security/cert/CertificateException;
    :catch_a
    move-exception v6

    .line 1280
    .local v6, "e":Ljava/io/FileNotFoundException;
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v27

    .line 1281
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :catch_b
    move-exception v6

    .line 1282
    .local v6, "e":Ljava/io/IOException;
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v27
    :try_end_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_c .. :try_end_c} :catch_5
.end method

.method public static isSupportedOnJVM()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/LinkageError;,
            Ljava/lang/ExceptionInInitializerError;
        }
    .end annotation

    .prologue
    .line 162
    const-string v1, "javax.net.ssl.SSLServerSocketFactory"

    .line 164
    .local v1, "requiredClassname":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private keyValid(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->propertyKeys:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 203
    :cond_0
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->propertyKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 198
    :cond_1
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->propertyKeys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static obfuscate([C)Ljava/lang/String;
    .locals 6
    .param p0, "password"    # [C

    .prologue
    .line 275
    if-nez p0, :cond_0

    .line 276
    const/4 v1, 0x0

    .line 283
    :goto_0
    return-object v1

    .line 277
    :cond_0
    invoke-static {p0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->toByte([C)[B

    move-result-object v0

    .line 278
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-lt v2, v3, :cond_1

    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "{xor}"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    new-instance v4, Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SimpleBase64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 281
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "encryptedValue":Ljava/lang/String;
    goto :goto_0

    .line 279
    .end local v1    # "encryptedValue":Ljava/lang/String;
    :cond_1
    aget-byte v3, v0, v2

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->key:[B

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->key:[B

    array-length v5, v5

    rem-int v5, v2, v5

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static packCipherSuites([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "ciphers"    # [Ljava/lang/String;

    .prologue
    .line 321
    const/4 v1, 0x0

    .line 322
    .local v1, "cipherSet":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 323
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 324
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_1

    .line 330
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 325
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    .restart local v2    # "i":I
    :cond_1
    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 327
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 324
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static toByte([C)[B
    .locals 6
    .param p0, "c"    # [C

    .prologue
    .line 253
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 260
    :cond_0
    return-object v0

    .line 254
    :cond_1
    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    new-array v0, v5, [B

    .line 255
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v3, 0x0

    .line 256
    .local v3, "j":I
    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_0

    .line 257
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-char v5, p0, v3

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    .line 258
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    aget-char v5, p0, v3

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_0
.end method

.method public static toChar([B)[C
    .locals 7
    .param p0, "b"    # [B

    .prologue
    .line 235
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 241
    :cond_0
    return-object v0

    .line 236
    :cond_1
    array-length v5, p0

    div-int/lit8 v5, v5, 0x2

    new-array v0, v5, [C

    .line 237
    .local v0, "c":[C
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v3, 0x0

    .line 238
    .local v3, "j":I
    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_0

    .line 239
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-byte v6, p0, v2

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v0, v3

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_0
.end method

.method public static unpackCipherSuites(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "ciphers"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x2c

    .line 345
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 360
    :goto_0
    return-object v3

    .line 346
    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 347
    .local v0, "c":Ljava/util/Vector;
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 348
    .local v1, "i":I
    const/4 v2, 0x0

    .line 350
    .local v2, "j":I
    :goto_1
    const/4 v4, -0x1

    if-gt v1, v4, :cond_1

    .line 357
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 358
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 359
    .local v3, "s":[Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0

    .line 352
    .end local v3    # "s":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 353
    add-int/lit8 v2, v1, 0x1

    .line 354
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_1
.end method


# virtual methods
.method public createSocketFactory(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 10
    .param p1, "configID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
        }
    .end annotation

    .prologue
    .line 1341
    const-string v0, "createSocketFactory"

    .line 1342
    .local v0, "METHOD_NAME":Ljava/lang/String;
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getSSLContext(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 1343
    .local v1, "ctx":Ljavax/net/ssl/SSLContext;
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    if-eqz v2, :cond_0

    .line 1345
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    const-string v4, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v5, "createSocketFactory"

    const-string v6, "12020"

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    if-eqz p1, :cond_1

    move-object v2, p1

    :goto_0
    aput-object v2, v7, v8

    const/4 v8, 0x1

    .line 1346
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getEnabledCipherSuites(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "com.ibm.ssl.enabledCipherSuites"

    const/4 v9, 0x0

    invoke-direct {p0, p1, v2, v9}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    aput-object v2, v7, v8

    .line 1345
    invoke-interface {v3, v4, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1349
    :cond_0
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    return-object v2

    .line 1345
    :cond_1
    const-string v2, "null (broker defaults)"

    goto :goto_0

    .line 1346
    :cond_2
    const-string v2, "null (using platform-enabled cipher suites)"

    goto :goto_1
.end method

.method public getClientAuthentication(Ljava/lang/String;)Z
    .locals 4
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 1085
    const-string v2, "com.ibm.ssl.clientAuthentication"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1086
    .local v0, "auth":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1087
    .local v1, "res":Z
    if-eqz v0, :cond_0

    .line 1088
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1090
    :cond_0
    return v1
.end method

.method public getConfiguration(Ljava/lang/String;)Ljava/util/Properties;
    .locals 1
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 505
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    :goto_0
    check-cast v0, Ljava/util/Properties;

    return-object v0

    .line 506
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getEnabledCipherSuites(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 1071
    const-string v2, "com.ibm.ssl.enabledCipherSuites"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1072
    .local v0, "ciphers":Ljava/lang/String;
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->unpackCipherSuites(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1073
    .local v1, "res":[Ljava/lang/String;
    return-object v1
.end method

.method public getJSSEProvider(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 855
    const-string v0, "com.ibm.ssl.contextProvider"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyManager(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 990
    const-string v0, "com.ibm.ssl.keyManager"

    const-string/jumbo v1, "ssl.KeyManagerFactory.algorithm"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyStore(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 912
    const-string v0, "com.ibm.ssl.keyStore"

    .line 913
    .local v0, "ibmKey":Ljava/lang/String;
    const-string v3, "javax.net.ssl.keyStore"

    .line 915
    .local v3, "sysProperty":Ljava/lang/String;
    const/4 v1, 0x0

    .line 916
    .local v1, "res":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getPropertyFromConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 917
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 933
    .end local v1    # "res":Ljava/lang/String;
    .local v2, "res":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 929
    .end local v2    # "res":Ljava/lang/String;
    .restart local v1    # "res":Ljava/lang/String;
    :cond_0
    if-eqz v3, :cond_1

    .line 930
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v2, v1

    .line 933
    .end local v1    # "res":Ljava/lang/String;
    .restart local v2    # "res":Ljava/lang/String;
    goto :goto_0
.end method

.method public getKeyStorePassword(Ljava/lang/String;)[C
    .locals 4
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 945
    const-string v2, "com.ibm.ssl.keyStorePassword"

    const-string v3, "javax.net.ssl.keyStorePassword"

    invoke-direct {p0, p1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 946
    .local v0, "pw":Ljava/lang/String;
    const/4 v1, 0x0

    .line 947
    .local v1, "r":[C
    if-eqz v0, :cond_0

    .line 948
    const-string/jumbo v2, "{xor}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 949
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->deObfuscate(Ljava/lang/String;)[C

    move-result-object v1

    .line 954
    :cond_0
    :goto_0
    return-object v1

    .line 951
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_0
.end method

.method public getKeyStoreProvider(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 978
    const-string v0, "com.ibm.ssl.keyStoreProvider"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyStoreType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 966
    const-string v0, "com.ibm.ssl.keyStoreType"

    const-string v1, "javax.net.ssl.keyStoreType"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLProtocol(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 843
    const-string v0, "com.ibm.ssl.protocol"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustManager(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 1059
    const-string v0, "com.ibm.ssl.trustManager"

    const-string/jumbo v1, "ssl.TrustManagerFactory.algorithm"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustStore(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 1002
    const-string v0, "com.ibm.ssl.trustStore"

    const-string v1, "javax.net.ssl.trustStore"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustStorePassword(Ljava/lang/String;)[C
    .locals 4
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 1014
    const-string v2, "com.ibm.ssl.trustStorePassword"

    const-string v3, "javax.net.ssl.trustStorePassword"

    invoke-direct {p0, p1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1015
    .local v0, "pw":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1016
    .local v1, "r":[C
    if-eqz v0, :cond_0

    .line 1017
    const-string/jumbo v2, "{xor}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1018
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->deObfuscate(Ljava/lang/String;)[C

    move-result-object v1

    .line 1023
    :cond_0
    :goto_0
    return-object v1

    .line 1020
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_0
.end method

.method public getTrustStoreProvider(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 1047
    const-string v0, "com.ibm.ssl.trustStoreProvider"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustStoreType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 1035
    const-string v0, "com.ibm.ssl.trustStoreType"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 2
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "configID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->checkPropertyKeys(Ljava/util/Properties;)V

    .line 427
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 428
    .local v0, "p":Ljava/util/Properties;
    invoke-virtual {v0, p1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 429
    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->convertPassword(Ljava/util/Properties;)V

    .line 430
    if-eqz p2, :cond_0

    .line 431
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :goto_0
    return-void

    .line 433
    :cond_0
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    goto :goto_0
.end method

.method public merge(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 2
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "configID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 454
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->checkPropertyKeys(Ljava/util/Properties;)V

    .line 455
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    .line 456
    .local v0, "p":Ljava/util/Properties;
    if-eqz p2, :cond_0

    .line 457
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "p":Ljava/util/Properties;
    check-cast v0, Ljava/util/Properties;

    .line 459
    .restart local v0    # "p":Ljava/util/Properties;
    :cond_0
    if-nez v0, :cond_1

    .line 460
    new-instance v0, Ljava/util/Properties;

    .end local v0    # "p":Ljava/util/Properties;
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 462
    .restart local v0    # "p":Ljava/util/Properties;
    :cond_1
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->convertPassword(Ljava/util/Properties;)V

    .line 463
    invoke-virtual {v0, p1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 464
    if-eqz p2, :cond_2

    .line 465
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    :goto_0
    return-void

    .line 467
    :cond_2
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 2
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 481
    const/4 v0, 0x0

    .line 482
    .local v0, "res":Z
    if-eqz p1, :cond_2

    .line 483
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 490
    :cond_0
    :goto_0
    return v0

    .line 483
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 485
    :cond_2
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    if-eqz v1, :cond_0

    .line 486
    const/4 v0, 0x1

    .line 487
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    goto :goto_0
.end method
