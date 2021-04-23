# Pros and Cons of MariaDB
| ✔️ Pros | ❌ Cons  |
|----------|-----------|
| **High Security Measures** |  **MariaDB is somewhat liable to bloating**  |
| MariaDB comes with a wide range of safety measures, including: <br/> *1)* Internal security and password checks <br/> *2)* PAM and LDAP authentication <br/> *3)* User roles <br/> *4)* Database encryption | Its central IDX log file tends to become very large after protracted use, ultimately slowing performance.    
|   |   |
| **Performance is Faster and Efficient** |  **Caching**  |
| MariaDB takes into account engine-independent table statistics whenever optimizing queries. It offers system variables, buffers, threads, database-type performance improvements, and encryption technology. |  Despite using Aria engine (see row3 Pros), MariaDB caching is not as fast as it could be  |
|   |   |
| **More and better storage engines** |  **Required upgrades to a newer versions** |
| 1) Aria engine for better caching and speeding up complex queries (such as GROUP BY and DISTINCT) <br/> 2) XtraDB engine is used to be rid of slow performance and instability like in high load environments. |   For a new release, the appropriate libraries will not be deployed in time, therefore MariaDB's dependencies require upgrades.  |
|   |   |
| **Automatic migration to MariaDB** |  **Incompatiblity with MySQL, meaning migration has to be done manually**  |

